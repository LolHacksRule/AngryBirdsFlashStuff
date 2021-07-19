package starling.events
{
   import §_-ia§.formatString;
   import flash.utils.getQualifiedClassName;
   
   public class Event
   {
      
      public static const ADDED:String = "added";
      
      public static const ADDED_TO_STAGE:String = "addedToStage";
      
      public static const ENTER_FRAME:String = "enterFrame";
      
      public static const §_-dC§:String = "removed";
      
      public static const §_-av§:String = "removedFromStage";
      
      public static const §_-4F§:String = "triggered";
      
      public static const §_-hZ§:String = "movieCompleted";
      
      public static const §_-GI§:String = "flatten";
      
      public static const RESIZE:String = "resize";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            ADDED_TO_STAGE = "addedToStage";
            if(!(_loc2_ && _loc1_))
            {
               ENTER_FRAME = "enterFrame";
            }
            §_-dC§ = "removed";
            §_-av§ = "removedFromStage";
            §_-4F§ = "triggered";
            §_-hZ§ = "movieCompleted";
         }
         if(_loc1_ || _loc2_)
         {
            RESIZE = "resize";
         }
      }
      
      private var §_-Cc§:EventDispatcher;
      
      private var §_-nc§:EventDispatcher;
      
      private var §_-gA§:String;
      
      private var §_-xP§:Boolean;
      
      private var §_-Kv§:Boolean;
      
      private var §_-DM§:Boolean;
      
      public function Event(param1:String, param2:Boolean = false)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || this)
         {
            super();
            if(!(_loc3_ && param2))
            {
               this.§_-gA§ = param1;
               if(!_loc3_)
               {
                  addr49:
                  this.§_-xP§ = param2;
               }
            }
            return;
         }
         §§goto(addr49);
      }
      
      public function stopPropagation() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§_-Kv§ = true;
         }
      }
      
      public function §_-2P§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§_-Kv§ = this.§_-DM§ = true;
         }
      }
      
      public function toString() : String
      {
         return formatString("[{0} type=\"{1}\" bubbles={2}]",getQualifiedClassName(this).split("::").pop(),this.§_-gA§,this.§_-xP§);
      }
      
      function §_-Lb§(param1:EventDispatcher) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§_-Cc§ = param1;
         }
      }
      
      function §_-6Y§(param1:EventDispatcher) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§_-nc§ = param1;
         }
      }
      
      function get §_-eJ§() : Boolean
      {
         return this.§_-Kv§;
      }
      
      function get §_-MZ§() : Boolean
      {
         return this.§_-DM§;
      }
      
      public function get bubbles() : Boolean
      {
         return this.§_-xP§;
      }
      
      public function get target() : EventDispatcher
      {
         return this.§_-Cc§;
      }
      
      public function get currentTarget() : EventDispatcher
      {
         return this.§_-nc§;
      }
      
      public function get type() : String
      {
         return this.§_-gA§;
      }
   }
}
