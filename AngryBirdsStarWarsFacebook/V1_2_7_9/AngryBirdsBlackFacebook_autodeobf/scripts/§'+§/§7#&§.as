package §'+§
{
   import flash.utils.Dictionary;
   
   public class §7#&§ extends §@#1§
   {
       
      
      protected var §-I§:Dictionary;
      
      public function §7#&§(param1:String = "en")
      {
         super(param1);
         this.§-I§ = new Dictionary();
         this.§-I§[param1] = new Dictionary();
      }
      
      override public function getLocalizedString(param1:String) : String
      {
         var _loc2_:String = "";
         if(this.§-I§[§2#!§][param1])
         {
            _loc2_ = this.§-I§[§2#!§][param1];
         }
         return _loc2_;
      }
   }
}
