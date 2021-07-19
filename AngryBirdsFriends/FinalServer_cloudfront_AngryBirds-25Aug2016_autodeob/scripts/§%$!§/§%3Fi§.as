package §%$!§
{
   public class §?i§ extends §"#q§
   {
       
      
      public var levelScore:int;
      
      public var stars:int;
      
      public var §?$9§:int;
      
      public var §+"t§:String;
      
      public var §8U§:int;
      
      public var §[!Y§:Boolean;
      
      public var §0!i§:Boolean;
      
      [Transient]
      public var beaten:Boolean = false;
      
      public function §?i§(param1:String, param2:String, param3:String, param4:int, param5:int, param6:int, param7:int, param8:String, param9:int, param10:String, param11:String = null)
      {
         this.levelScore = param4;
         this.stars = param5;
         this.§?$9§ = param6;
         this.§+"t§ = param8;
         this.§8U§ = param9;
         this.§[!Y§ = param10 && param10 == "ch";
         super(param1,param2,param3,param7,param11);
      }
      
      public static function §>!§(param1:Object) : §?i§
      {
         return new §?i§(param1.uid,param1.n,param1.a,param1.p,param1.s,param1.me,param1.r,param1.ltn,param1.ls,param1.t,param1.iurl);
      }
   }
}
