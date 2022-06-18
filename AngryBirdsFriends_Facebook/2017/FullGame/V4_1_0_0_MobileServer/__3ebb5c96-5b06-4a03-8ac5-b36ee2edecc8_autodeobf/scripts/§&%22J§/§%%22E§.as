package §&"J§
{
   public class §%"E§ extends §2!T§
   {
       
      
      public var §`#e§:int;
      
      public var §+!K§:int;
      
      public var §5L§:String;
      
      public var §8">§:int;
      
      public var §9!r§:Boolean;
      
      public function §%"E§(param1:String, param2:String, param3:String, param4:int, param5:int, param6:int, param7:String, param8:int, param9:String, param10:String)
      {
         this.§`#e§ = param5;
         this.§+!K§ = param6;
         this.§5L§ = param7;
         this.§8">§ = param8;
         this.§9!r§ = param9 && param9 == "ch";
         super(param1,param2,param3,param4,param10);
      }
      
      public static function §2u§(param1:Object) : §%"E§
      {
         return new §%"E§(param1.uid,param1.n,param1.a,param1.r,param1.p,param1.c,param1.ltn,param1.ls,param1.t,param1.iurl);
      }
   }
}
