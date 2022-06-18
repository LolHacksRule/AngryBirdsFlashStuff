package § #_§
{
   import flash.utils.Dictionary;
   
   public class §&$2§ extends §5"g§
   {
       
      
      protected var §2!_§:Dictionary;
      
      public function §&$2§(param1:String = "en")
      {
         super(param1);
         this.§2!_§ = new Dictionary();
         this.§2!_§[param1] = new Dictionary();
      }
      
      override public function getLocalizedString(param1:String) : String
      {
         var _loc2_:String = "";
         if(this.§2!_§[§-+§][param1])
         {
            _loc2_ = this.§2!_§[§-+§][param1];
         }
         return _loc2_;
      }
   }
}
