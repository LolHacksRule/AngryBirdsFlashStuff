package §_-01E§
{
   public class §_-5b§ extends §_-0El§
   {
       
      
      public var §_-04F§:int;
      
      public var stars:int;
      
      public var §_-GM§:int;
      
      public var §_-8D§:Boolean;
      
      [Transient]
      public var §_-07d§:Boolean = false;
      
      public function §_-5b§(param1:String, param2:String, param3:String, param4:int, param5:int, param6:int, param7:int)
      {
         this.§_-04F§ = param4;
         this.stars = param5;
         this.§_-GM§ = param6;
         super(param1,param2,param3,param7);
      }
      
      public static function §_-Ej§(param1:Object) : §_-5b§
      {
         return new §_-5b§(param1.u,param1.n,param1.a,param1.p,param1.s,param1.me,param1.r);
      }
   }
}
