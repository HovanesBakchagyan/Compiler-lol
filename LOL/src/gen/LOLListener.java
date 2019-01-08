// Generated from LOL.g4 by ANTLR 4.7.1
package gen;
import org.antlr.v4.runtime.tree.ParseTreeListener;

/**
 * This interface defines a complete listener for a parse tree produced by
 * {@link LOLParser}.
 */
public interface LOLListener extends ParseTreeListener {
	/**
	 * Enter a parse tree produced by {@link LOLParser#program}.
	 * @param ctx the parse tree
	 */
	void enterProgram(LOLParser.ProgramContext ctx);
	/**
	 * Exit a parse tree produced by {@link LOLParser#program}.
	 * @param ctx the parse tree
	 */
	void exitProgram(LOLParser.ProgramContext ctx);
	/**
	 * Enter a parse tree produced by {@link LOLParser#stat}.
	 * @param ctx the parse tree
	 */
	void enterStat(LOLParser.StatContext ctx);
	/**
	 * Exit a parse tree produced by {@link LOLParser#stat}.
	 * @param ctx the parse tree
	 */
	void exitStat(LOLParser.StatContext ctx);
	/**
	 * Enter a parse tree produced by {@link LOLParser#declaration}.
	 * @param ctx the parse tree
	 */
	void enterDeclaration(LOLParser.DeclarationContext ctx);
	/**
	 * Exit a parse tree produced by {@link LOLParser#declaration}.
	 * @param ctx the parse tree
	 */
	void exitDeclaration(LOLParser.DeclarationContext ctx);
	/**
	 * Enter a parse tree produced by {@link LOLParser#assignment}.
	 * @param ctx the parse tree
	 */
	void enterAssignment(LOLParser.AssignmentContext ctx);
	/**
	 * Exit a parse tree produced by {@link LOLParser#assignment}.
	 * @param ctx the parse tree
	 */
	void exitAssignment(LOLParser.AssignmentContext ctx);
	/**
	 * Enter a parse tree produced by {@link LOLParser#repeat_loop}.
	 * @param ctx the parse tree
	 */
	void enterRepeat_loop(LOLParser.Repeat_loopContext ctx);
	/**
	 * Exit a parse tree produced by {@link LOLParser#repeat_loop}.
	 * @param ctx the parse tree
	 */
	void exitRepeat_loop(LOLParser.Repeat_loopContext ctx);
	/**
	 * Enter a parse tree produced by {@link LOLParser#conditional}.
	 * @param ctx the parse tree
	 */
	void enterConditional(LOLParser.ConditionalContext ctx);
	/**
	 * Exit a parse tree produced by {@link LOLParser#conditional}.
	 * @param ctx the parse tree
	 */
	void exitConditional(LOLParser.ConditionalContext ctx);
	/**
	 * Enter a parse tree produced by {@link LOLParser#func_def}.
	 * @param ctx the parse tree
	 */
	void enterFunc_def(LOLParser.Func_defContext ctx);
	/**
	 * Exit a parse tree produced by {@link LOLParser#func_def}.
	 * @param ctx the parse tree
	 */
	void exitFunc_def(LOLParser.Func_defContext ctx);
	/**
	 * Enter a parse tree produced by {@link LOLParser#block}.
	 * @param ctx the parse tree
	 */
	void enterBlock(LOLParser.BlockContext ctx);
	/**
	 * Exit a parse tree produced by {@link LOLParser#block}.
	 * @param ctx the parse tree
	 */
	void exitBlock(LOLParser.BlockContext ctx);
	/**
	 * Enter a parse tree produced by {@link LOLParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterExpr(LOLParser.ExprContext ctx);
	/**
	 * Exit a parse tree produced by {@link LOLParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitExpr(LOLParser.ExprContext ctx);
	/**
	 * Enter a parse tree produced by {@link LOLParser#func_call}.
	 * @param ctx the parse tree
	 */
	void enterFunc_call(LOLParser.Func_callContext ctx);
	/**
	 * Exit a parse tree produced by {@link LOLParser#func_call}.
	 * @param ctx the parse tree
	 */
	void exitFunc_call(LOLParser.Func_callContext ctx);
}