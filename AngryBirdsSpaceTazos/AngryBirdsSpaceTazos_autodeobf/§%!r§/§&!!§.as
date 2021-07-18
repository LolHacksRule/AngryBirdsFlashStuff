package §%!r§
{
   import flash.utils.Dictionary;
   
   public class §&!!§ extends § !p§
   {
       
      
      protected var § "5§:Dictionary;
      
      public function §&!!§(param1:String = "en")
      {
         super(param1);
         this.§ "5§ = new Dictionary();
         this.§ "5§[param1] = new Dictionary();
      }
      
      override public function getLocalizedString(param1:String) : String
      {
         var _loc2_:String = "";
         if(this.§ "5§[§^N§][param1])
         {
            _loc2_ = this.§ "5§[§^N§][param1];
         }
         return _loc2_;
      }
   }
}
