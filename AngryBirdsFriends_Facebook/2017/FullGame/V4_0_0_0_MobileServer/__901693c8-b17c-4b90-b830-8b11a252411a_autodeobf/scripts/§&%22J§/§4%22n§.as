package §&"J§
{
   public class §4"n§ extends §2!T§
   {
       
      
      public var levelScore:int;
      
      public var stars:int;
      
      public var §5#e§:int;
      
      public var §5L§:String;
      
      public var §8">§:int;
      
      public var §9!r§:Boolean;
      
      public var §8!-§:Boolean;
      
      [Transient]
      public var beaten:Boolean = false;
      
      public function §4"n§(param1:String, param2:String, param3:String, param4:int, param5:int, param6:int, param7:int, param8:String, param9:int, param10:String, param11:String = null)
      {
         this.levelScore = param4;
         this.stars = param5;
         this.§5#e§ = param6;
         this.§5L§ = param8;
         this.§8">§ = param9;
         this.§9!r§ = param10 && param10 == "ch";
         super(param1,param2,param3,param7,param11);
      }
      
      public static function §2u§(param1:Object) : §4"n§
      {
         return new §4"n§(param1.uid,param1.n,param1.a,param1.p,param1.s,param1.me,param1.r,param1.ltn,param1.ls,param1.t,param1.iurl);
      }
   }
}
