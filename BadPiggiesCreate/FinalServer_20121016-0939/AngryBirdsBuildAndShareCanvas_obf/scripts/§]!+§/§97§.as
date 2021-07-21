package §]!+§
{
   import §-!n§.§5!U§;
   import §2"=§.b2Vec2;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.utils.getTimer;
   
   public class §97§ extends Sprite
   {
      
      private static const §7!<§:int = 20;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §7!<§ = 20;
         }
      }
      
      private var §^!r§:Vector.<§7"3§>;
      
      private var §7!3§:int;
      
      public function §97§(param1:Point, param2:Point)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:§7"3§ = null;
         if(!(_loc5_ && this))
         {
            super();
            if(_loc6_ || param2)
            {
               addr36:
               this.§^!r§ = new Vector.<§7"3§>();
            }
            var _loc3_:int = 0;
            while(_loc3_ < §7!<§)
            {
               _loc4_ = new §7"3§(new b2Vec2(param1.x,param1.y),new b2Vec2(param2.x,param2.y),_loc3_ == 0);
               if(_loc6_)
               {
                  this.§^!r§.push(_loc4_);
                  loop1:
                  while(true)
                  {
                     addr89:
                     while(true)
                     {
                        addChild(_loc4_);
                        while(true)
                        {
                           if(_loc6_)
                           {
                              _loc3_++;
                              if(_loc6_ || param1)
                              {
                                 break;
                              }
                              continue;
                           }
                           continue loop1;
                        }
                     }
                  }
               }
               while(false)
               {
                  §§goto(addr89);
               }
            }
            if(_loc6_)
            {
               addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
            }
            return;
         }
         §§goto(addr36);
      }
      
      private function onAddedToStage(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§7!3§ = getTimer();
            while(true)
            {
               removeEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
               loop1:
               while(_loc2_)
               {
                  while(true)
                  {
                     addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
                     do
                     {
                        addEventListener(Event.REMOVED_FROM_STAGE,this.§?!N§);
                        do
                        {
                           §5!U§.playSound("Sound_Star_Pig");
                        }
                        while(!(_loc2_ || _loc3_));
                        
                     }
                     while(_loc3_);
                     
                     if(!(_loc3_ && param1))
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr89);
      }
      
      private function §?!N§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
            while(true)
            {
               removeEventListener(Event.REMOVED_FROM_STAGE,this.§?!N§);
               while(!_loc2_)
               {
                  addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
                  if(!_loc3_)
                  {
                     continue;
                  }
                  return;
                  addr48:
               }
            }
         }
         §§goto(addr48);
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:§7"3§ = null;
         var _loc2_:int = getTimer() - this.§7!3§;
         if(_loc7_ || _loc3_)
         {
            this.§7!3§ = getTimer();
         }
         for each(_loc3_ in this.§^!r§)
         {
            if(_loc7_)
            {
               _loc3_.update(_loc2_);
            }
         }
         if(_loc7_)
         {
            if(!this.§^!r§[0].parent)
            {
               if(_loc7_ || this)
               {
                  dispatchEvent(new Event(Event.COMPLETE));
                  addr135:
                  loop3:
                  while(true)
                  {
                     §5!U§.playSound("Sound_Star_Pig");
                     addr103:
                     addr105:
                     while(!_loc7_)
                     {
                        continue loop3;
                     }
                  }
                  addr135:
               }
               §§goto(addr135);
            }
            while(true)
            {
               if(numChildren == 0)
               {
                  if(!(_loc6_ && _loc2_))
                  {
                     if(_loc7_ || _loc3_)
                     {
                        parent.removeChild(this);
                     }
                     else
                     {
                        §§goto(addr103);
                     }
                  }
                  break;
               }
               break;
               §§goto(addr105);
            }
            return;
         }
         §§goto(addr135);
      }
   }
}
