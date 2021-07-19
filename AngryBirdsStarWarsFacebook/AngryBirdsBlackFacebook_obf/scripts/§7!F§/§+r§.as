package §7!F§
{
   import §,"N§.§'#E§;
   import §,"N§.§3w§;
   import §2"Y§.§>"X§;
   import §?m§.§+"2§;
   
   public class §+r§ extends §1x§
   {
       
      
      protected var §?4§:§>"X§;
      
      public function §+r§(param1:String, param2:String, param3:§+"2§, param4:§>"X§, param5:Boolean = true, param6:int = 1)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_)
         {
            this.§?4§ = param4;
            do
            {
               super(param1,param2,param3,param5,param6);
            }
            while(!_loc8_);
            
         }
      }
      
      override protected function initPackageManager() : §'#E§
      {
         return new §3w§(§+!b§,this.§?4§);
      }
   }
}
