package §2G§
{
   public class §@#P§ extends §1#S§
   {
       
      
      public var §'!_§:int;
      
      public var stars:int;
      
      public var §#"y§:int;
      
      public var §6"X§:String;
      
      public var §6!3§:int;
      
      public var §'#%§:Boolean;
      
      public var §;!o§:Boolean;
      
      [Transient]
      public var beaten:Boolean = false;
      
      public function §@#P§(param1:String, param2:String, param3:String, param4:int, param5:int, param6:int, param7:int, param8:String, param9:int, param10:String, param11:String = null)
      {
         this.§'!_§ = param4;
         this.stars = param5;
         this.§#"y§ = param6;
         this.§6"X§ = param8;
         this.§6!3§ = param9;
         this.§'#%§ = param10 && param10 == "ch";
         super(param1,param2,param3,param7,param11);
      }
      
      public static function §+!@§(param1:Object) : §@#P§
      {
         return new §@#P§(param1.uid,param1.n,param1.a,param1.p,param1.s,param1.me,param1.r,param1.ltn,param1.ls,param1.t,param1.iurl);
      }
   }
}
