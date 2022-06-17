package §3"G§
{
   import flash.utils.Dictionary;
   
   public class §,!D§ extends §5!G§
   {
       
      
      protected var §[?§:Dictionary;
      
      public function §,!D§(param1:String = "en")
      {
         super(param1);
         this.§[?§ = new Dictionary();
         this.§[?§[param1] = new Dictionary();
      }
      
      override public function getLocalizedString(param1:String) : String
      {
         var _loc2_:String = "";
         if(this.§[?§[§1#t§][param1])
         {
            _loc2_ = this.§[?§[§1#t§][param1];
         }
         return _loc2_;
      }
   }
}
