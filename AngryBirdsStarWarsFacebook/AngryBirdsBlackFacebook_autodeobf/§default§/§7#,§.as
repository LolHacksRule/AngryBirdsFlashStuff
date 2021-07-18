package §default§
{
   import flash.utils.Dictionary;
   
   public class §7#,§ extends §`#O§
   {
       
      
      private var §'`§:Dictionary;
      
      public function §7#,§(param1:String, param2:Function, param3:String = "Application", param4:String = "")
      {
         this.§'`§ = new Dictionary(true);
         this.§'`§["callback"] = param2;
         super(param1);
         this.grouping = param3;
         this.helpText = param4;
      }
      
      public function get callback() : Function
      {
         return this.§'`§["callback"] as Function;
      }
   }
}
