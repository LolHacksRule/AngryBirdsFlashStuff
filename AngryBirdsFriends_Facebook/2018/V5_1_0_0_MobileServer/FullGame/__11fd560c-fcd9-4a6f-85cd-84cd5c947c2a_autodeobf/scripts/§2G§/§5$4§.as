package §2G§
{
   public class §5$4§ extends §1#S§
   {
       
      
      public var §6"D§:int;
      
      public var §7!L§:int;
      
      public var §6"X§:String;
      
      public var §6!3§:int;
      
      public var §'#%§:Boolean;
      
      public function §5$4§(param1:String, param2:String, param3:String, param4:int, param5:int, param6:int, param7:String, param8:int, param9:String, param10:String)
      {
         this.§6"D§ = param5;
         this.§7!L§ = param6;
         this.§6"X§ = param7;
         this.§6!3§ = param8;
         this.§'#%§ = param9 && param9 == "ch";
         super(param1,param2,param3,param4,param10);
      }
      
      public static function §+!@§(param1:Object) : §5$4§
      {
         return new §5$4§(param1.uid,param1.n,param1.a,param1.r,param1.p,param1.c,param1.ltn,param1.ls,param1.t,param1.iurl);
      }
   }
}
