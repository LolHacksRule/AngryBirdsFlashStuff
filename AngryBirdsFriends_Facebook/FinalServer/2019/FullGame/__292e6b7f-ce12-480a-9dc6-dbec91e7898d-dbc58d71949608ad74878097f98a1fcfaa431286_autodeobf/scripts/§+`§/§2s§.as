package §+`§
{
   import flash.utils.Dictionary;
   
   public class §2s§ extends §-M§
   {
       
      
      protected var §'!G§:Dictionary;
      
      public function §2s§(param1:String = "en")
      {
         super(param1);
         this.§'!G§ = new Dictionary();
         this.§'!G§[param1] = new Dictionary();
      }
      
      override public function getLocalizedString(param1:String) : String
      {
         var _loc2_:String = "";
         if(this.§'!G§[§7#Z§][param1])
         {
            _loc2_ = this.§'!G§[§7#Z§][param1];
         }
         return _loc2_;
      }
   }
}
