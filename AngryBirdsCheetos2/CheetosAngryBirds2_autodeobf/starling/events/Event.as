package starling.events
{
   import §4v§.formatString;
   import flash.utils.getQualifiedClassName;
   
   public class Event
   {
      
      public static const ADDED:String = "added";
      
      public static const ADDED_TO_STAGE:String = "addedToStage";
      
      public static const ENTER_FRAME:String = "enterFrame";
      
      public static const §4![§:String = "removed";
      
      public static const §0!Q§:String = "removedFromStage";
      
      public static const §>!M§:String = "triggered";
      
      public static const §^!U§:String = "flatten";
      
      public static const RESIZE:String = "resize";
      
      public static const COMPLETE:String = "complete";
      
      public static const CONTEXT3D_CREATE:String = "context3DCreate";
      
      public static const §8v§:String = "removeFromJuggler";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            ADDED = "added";
            while(true)
            {
               ADDED_TO_STAGE = "addedToStage";
            }
            addr141:
         }
         loop1:
         while(true)
         {
            ENTER_FRAME = "enterFrame";
            loop2:
            while(true)
            {
               §4![§ = "removed";
               loop3:
               while(true)
               {
                  §0!Q§ = "removedFromStage";
                  loop4:
                  while(true)
                  {
                     §>!M§ = "triggered";
                     loop5:
                     while(!_loc2_)
                     {
                        §^!U§ = "flatten";
                        loop6:
                        while(true)
                        {
                           RESIZE = "resize";
                           while(!_loc2_)
                           {
                              COMPLETE = "complete";
                              continue loop4;
                              addr57:
                              if(_loc1_ || _loc2_)
                              {
                                 if(_loc1_)
                                 {
                                    §8v§ = "removeFromJuggler";
                                    addr76:
                                    if(_loc2_ && _loc2_)
                                    {
                                       while(true)
                                       {
                                          if(!_loc1_)
                                          {
                                             continue loop4;
                                          }
                                          §§goto(addr57);
                                          §§goto(addr76);
                                       }
                                       continue;
                                       addr55:
                                    }
                                    if(!_loc2_)
                                    {
                                       continue loop2;
                                    }
                                    continue loop5;
                                 }
                                 continue loop6;
                              }
                           }
                           continue loop1;
                        }
                     }
                     continue loop3;
                  }
               }
            }
         }
      }
      
      private var §[!W§:EventDispatcher;
      
      private var §=!1§:EventDispatcher;
      
      private var § !H§:String;
      
      private var §@`§:Boolean;
      
      private var §##§:Boolean;
      
      private var §=A§:Boolean;
      
      public function Event(param1:String, param2:Boolean = false)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param1))
         {
            super();
            while(true)
            {
               this.§ !H§ = param1;
               §§goto(addr61);
            }
         }
         addr61:
         while(true)
         {
            this.§@`§ = param2;
            if(_loc3_)
            {
               if(!_loc4_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function stopPropagation() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            this.§##§ = true;
         }
      }
      
      public function §"!a§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§##§ = this.§=A§ = true;
         }
      }
      
      public function toString() : String
      {
         return formatString("[{0} type=\"{1}\" bubbles={2}]",getQualifiedClassName(this).split("::").pop(),this.§ !H§,this.§@`§);
      }
      
      function §4!E§(param1:EventDispatcher) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§[!W§ = param1;
         }
      }
      
      function §"!>§(param1:EventDispatcher) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§=!1§ = param1;
         }
      }
      
      function get §-!^§() : Boolean
      {
         return this.§##§;
      }
      
      function get §<!b§() : Boolean
      {
         return this.§=A§;
      }
      
      public function get bubbles() : Boolean
      {
         return this.§@`§;
      }
      
      public function get target() : EventDispatcher
      {
         return this.§[!W§;
      }
      
      public function get currentTarget() : EventDispatcher
      {
         return this.§=!1§;
      }
      
      public function get type() : String
      {
         return this.§ !H§;
      }
   }
}
