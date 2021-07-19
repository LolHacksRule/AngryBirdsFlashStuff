package §6=§
{
   import flash.utils.getTimer;
   
   public final class §@"c§
   {
       
      
      public var §5"M§:int = 0;
      
      public var timestamp:String = "";
      
      public var text:String = "";
      
      public var §%"T§:int = 0;
      
      public var type:String;
      
      public var tag:String;
      
      public var § p§:Boolean = false;
      
      public var visible:Boolean = true;
      
      public function §@"c§(param1:String, param2:String, param3:String = "Info", param4:String = "")
      {
         super();
         this.tag = param4;
         this.text = param1;
         this.timestamp = param2;
         this.type = param3;
         this.§5"M§ = getTimer();
      }
      
      public function toString() : String
      {
         var _loc1_:* = this.type + ":\t";
         return _loc1_ + this.text;
      }
   }
}
