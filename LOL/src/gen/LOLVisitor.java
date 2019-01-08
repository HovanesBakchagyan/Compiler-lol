// Generated from LOL.g4 by ANTLR 4.7.1
package gen;
import org.antlr.v4.runtime.tree.ParseTreeVisitor;

/**
 * This interface defines a complete generic visitor for a parse tree produced
 * by {@link LOLParser}.
 *
 * @param <T> The return type of the visit operation. Use {@link Void} for
 * operations with no return type.
 */
public interface LOLVisitor<T> extends ParseTreeVisitor<T> {
	/**
	 * Visit a parse tree produced by {@link LOLParser#program}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitProgram(LOLParser.ProgramContext ctx);
	/**
	 * Visit a parse tree produced by {@link LOLParser#stat}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitStat(LOLParser.StatContext ctx);
	/**
	 * Visit a parse tree produced by {@link LOLParser#declaration}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitDeclaration(LOLParser.DeclarationContext ctx);
	/**
	 * Visit a parse tree produced by {@link LOLParser#assignment}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitAssignment(LOLParser.AssignmentContext ctx);
	/**
	 * Visit a parse tree produced by {@link LOLParser#repeat_loop}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitRepeat_loop(LOLParser.Repeat_loopContext ctx);
	/**
	 * Visit a parse tree produced by {@link LOLParser#conditional}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitConditional(LOLParser.ConditionalContext ctx);
	/**
	 * Visit a parse tree produced by {@link LOLParser#func_def}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitFunc_def(LOLParser.Func_defContext ctx);
	/**
	 * Visit a parse tree produced by {@link LOLParser#block}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitBlock(LOLParser.BlockContext ctx);
	/**
	 * Visit a parse tree produced by {@link LOLParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitExpr(LOLParser.ExprContext ctx);
	/**
	 * Visit a parse tree produced by {@link LOLParser#func_call}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitFunc_call(LOLParser.Func_callContext ctx);
}