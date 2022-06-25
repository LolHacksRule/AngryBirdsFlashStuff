package starling.events
{
   import §7H§.formatString;
   import flash.utils.getQualifiedClassName;
   
   public class Event
   {
      
      public static const ADDED:String = "added";
      
      public static const ADDED_TO_STAGE:String = "addedToStage";
      
      public static const ENTER_FRAME:String = "enterFrame";
      
      public static const §'C§:String = "removed";
      
      public static const REMOVED_FROM_STAGE:String = "removedFromStage";
      
      public static const § H§:String = "triggered";
      
      public static const §[!G§:String = "flatten";
      
      public static const RESIZE:String = "resize";
      
      public static const COMPLETE:String = "complete";
      
      public static const CONTEXT3D_CREATE:String = "context3DCreate";
      
      public static const §%!W§:String = "removeFromJuggler";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            ADDED = "added";
            loop0:
            while(true)
            {
               ADDED_TO_STAGE = "addedToStage";
               while(true)
               {
                  ENTER_FRAME = "enterFrame";
                  loop2:
                  while(true)
                  {
                     §'C§ = "removed";
                     while(true)
                     {
                        REMOVED_FROM_STAGE = "removedFromStage";
                        continue loop0;
                        addr103:
                        while(!_loc2_)
                        {
                           §[!G§ = "flatten";
                           while(true)
                           {
                              RESIZE = "resize";
                              continue loop2;
                           }
                           if(_loc1_ || _loc1_)
                           {
                              return;
                              addr43:
                           }
                        }
                     }
                  }
                  if(!(_loc1_ || Event))
                  {
                     continue;
                  }
                  while(true)
                  {
                     COMPLETE = "complete";
                     loop9:
                     while(_loc1_)
                     {
                        if(!(_loc1_ || _loc1_))
                        {
                           continue loop0;
                        }
                        CONTEXT3D_CREATE = "context3DCreate";
                        while(_loc1_)
                        {
                           §%!W§ = "removeFromJuggler";
                           if(!(_loc1_ || _loc2_))
                           {
                              continue;
                           }
                           if(_loc2_)
                           {
                              continue loop9;
                           }
                           §§goto(addr36);
                        }
                        §§goto(addr79);
                     }
                     §§goto(addr98);
                  }
                  §§goto(addr43);
               }
            }
         }
         §§goto(addr93);
      }
      
      private var §+F§:EventDispatcher;
      
      private var §0t§:EventDispatcher;
      
      private var §;!L§:String;
      
      private var §!,§:Boolean;
      
      private var §]!T§:Boolean;
      
      private var §#4§:Boolean;
      
      public function Event(param1:String, param2:Boolean = false)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super();
         }
         do
         {
            this.§;!L§ = param1;
            do
            {
               this.§!,§ = param2;
            }
            while(_loc4_ && param1);
            
         }
         while(_loc4_);
         
      }
      
      public function stopPropagation() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§]!T§ = true;
         }
      }
      
      public function §@J§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§]!T§ = this.§#4§ = true;
         }
      }
      
      public function toString() : String
      {
         return formatString("[{0} type=\"{1}\" bubbles={2}]",getQualifiedClassName(this).split("::").pop(),this.§;!L§,this.§!,§);
      }
      
      function §<!1§(param1:EventDispatcher) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§+F§ = param1;
         }
      }
      
      function §;!;§(param1:EventDispatcher) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§0t§ = param1;
         }
      }
      
      function get §]!W§() : Boolean
      {
         return this.§]!T§;
      }
      
      function get §^X§() : Boolean
      {
         return this.§#4§;
      }
      
      public function get bubbles() : Boolean
      {
         return this.§!,§;
      }
      
      public function get target() : EventDispatcher
      {
         return this.§+F§;
      }
      
      public function get currentTarget() : EventDispatcher
      {
         return this.§0t§;
      }
      
      public function get type() : String
      {
         return this.§;!L§;
      }
   }
}
