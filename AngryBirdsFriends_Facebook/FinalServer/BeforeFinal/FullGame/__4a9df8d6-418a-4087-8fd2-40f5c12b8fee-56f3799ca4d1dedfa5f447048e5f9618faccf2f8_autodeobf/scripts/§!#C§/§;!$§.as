package §!#C§
{
   public class §;!$§ extends §1#b§
   {
       
      
      public var §,$&§:int;
      
      public var §4!6§:int;
      
      public var §!!a§:int;
      
      public var §]"t§:String;
      
      public var leagueStars:int;
      
      public var §^!w§:Boolean;
      
      public var §2!y§:Boolean;
      
      [Transient]
      public var beaten:Boolean = false;
      
      public function §;!$§(param1:String, param2:String, param3:String, param4:int, param5:int, param6:int, param7:int, param8:String, param9:int, param10:String, param11:String = null)
      {
         this.§,$&§ = param4;
         this.§4!6§ = param5;
         this.§!!a§ = param6;
         this.§]"t§ = param8;
         this.leagueStars = param9;
         this.§^!w§ = param10 && param10 == "ch";
         super(param1,param2,param3,param7,param11);
      }
      
      public static function §5+§(param1:Object) : §;!$§
      {
         return new §;!$§(param1.uid,param1.n,param1.a,param1.p,param1.s,param1.me,param1.r,param1.ltn,param1.ls,param1.t,param1.iurl);
      }
   }
}
