package §<T§
{
   public class §'!O§ extends §""#§
   {
       
      
      private var §^!L§:Object;
      
      public function §'!O§(param1:String, param2:String, param3:String, param4:Boolean = true, param5:int = 1)
      {
         super(param1,param3,param4,param5);
         if(param2 != null && param2 != "")
         {
            this.§^!L§ = JSON.parse(param2);
         }
      }
      
      override protected function getFullFilename(param1:String) : String
      {
         §%Q§ = §%Q§ || "";
         var _loc2_:String = "/flash/packages/" + param1 + "." + §'!'§;
         if(this.§^!L§ && this.§^!L§[_loc2_])
         {
            _loc2_ = this.§^!L§[_loc2_];
         }
         return §%Q§ + _loc2_;
      }
   }
}
