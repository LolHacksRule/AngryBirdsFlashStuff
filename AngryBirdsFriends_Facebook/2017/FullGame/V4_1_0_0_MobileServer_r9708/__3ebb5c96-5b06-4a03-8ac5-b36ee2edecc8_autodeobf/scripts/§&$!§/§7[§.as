package §&$!§
{
   import flash.utils.Dictionary;
   
   public class §7[§ extends §1#w§
   {
       
      
      protected var §]#1§:Dictionary;
      
      public function §7[§(param1:String = "en")
      {
         super(param1);
         this.§]#1§ = new Dictionary();
         this.§]#1§[param1] = new Dictionary();
      }
      
      override public function getLocalizedString(param1:String) : String
      {
         var _loc2_:String = "";
         if(this.§]#1§[§+# §][param1])
         {
            _loc2_ = this.§]#1§[§+# §][param1];
         }
         return _loc2_;
      }
   }
}
