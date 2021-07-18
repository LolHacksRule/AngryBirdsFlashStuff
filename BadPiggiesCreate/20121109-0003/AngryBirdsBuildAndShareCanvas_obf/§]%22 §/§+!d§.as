package §]" §
{
   import §#";§.§0"#§;
   import §<!a§.b2Vec2;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.utils.getTimer;
   
   public class §+!d§ extends Sprite
   {
      
      private static const § "$§:int = 20;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            § "$§ = 20;
         }
      }
      
      private var §]!r§:Vector.<§4!F§>;
      
      private var §1"6§:int;
      
      public function §+!d§(param1:Point, param2:Point, param3:Boolean)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc5_:* = false;
         var _loc6_:§4!F§ = null;
         if(_loc7_)
         {
            super();
            if(!(_loc8_ && this))
            {
               addr32:
               this.§]!r§ = new Vector.<§4!F§>();
            }
            var _loc4_:int = 0;
            loop0:
            while(true)
            {
               §§push(_loc4_);
               loop1:
               while(true)
               {
                  §§push(§ "$§);
                  while(true)
                  {
                     if(§§pop() >= §§pop())
                     {
                        if(_loc7_ || param2)
                        {
                           break;
                        }
                        §§goto(addr138);
                     }
                     §§push(_loc4_);
                     if(_loc7_)
                     {
                        §§push(§ "$§);
                        if(_loc7_ || this)
                        {
                           _loc5_ = §§pop() == §§pop() - 1;
                           if(_loc8_)
                           {
                              break;
                           }
                           _loc6_ = new §4!F§(new b2Vec2(param1.x,param1.y),new b2Vec2(param2.x,param2.y),_loc5_,param3);
                           if(!_loc8_)
                           {
                              this.§]!r§.push(_loc6_);
                              loop3:
                              while(true)
                              {
                                 addr95:
                                 while(true)
                                 {
                                    addChild(_loc6_);
                                    continue loop3;
                                 }
                              }
                           }
                           while(true)
                           {
                              _loc4_++;
                              if(_loc7_)
                              {
                                 if(true)
                                 {
                                    break;
                                 }
                                 §§goto(addr95);
                              }
                              §§goto(addr99);
                           }
                           continue loop0;
                        }
                        continue;
                     }
                     continue loop1;
                  }
                  addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
                  addr138:
                  return;
               }
            }
         }
         §§goto(addr32);
      }
      
      private function onAddedToStage(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§1"6§ = getTimer();
            while(true)
            {
               removeEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
               loop1:
               while(true)
               {
                  addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
                  while(true)
                  {
                     addEventListener(Event.REMOVED_FROM_STAGE,this.§8!_§);
                     while(_loc2_ || _loc2_)
                     {
                        continue loop1;
                        §0"#§.§9"2§("Sound_Star_Pig");
                        if(!(_loc3_ && this))
                        {
                           return;
                           addr34:
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr34);
      }
      
      private function §8!_§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         }
         do
         {
            removeEventListener(Event.REMOVED_FROM_STAGE,this.§8!_§);
            do
            {
               addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
            }
            while(_loc2_);
            
         }
         while(_loc2_ && _loc2_);
         
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:§4!F§ = null;
         var _loc2_:int = getTimer() - this.§1"6§;
         if(!(_loc6_ && _loc3_))
         {
            this.§1"6§ = getTimer();
         }
         for each(_loc3_ in this.§]!r§)
         {
            if(!_loc6_)
            {
               _loc3_.update(_loc2_);
            }
         }
         if(_loc7_ || _loc3_)
         {
            if(!this.§]!r§[0].parent)
            {
               while(true)
               {
                  dispatchEvent(new Event(Event.COMPLETE));
                  addr130:
                  while(true)
                  {
                     §0"#§.§9"2§("Sound_Star_Pig");
                     addr107:
                     while(true)
                     {
                     }
                  }
               }
               addr124:
            }
            while(numChildren == 0)
            {
               if(!(_loc6_ && this))
               {
                  if(_loc7_)
                  {
                     if(_loc7_)
                     {
                        parent.removeChild(this);
                     }
                     else
                     {
                        §§goto(addr124);
                     }
                  }
                  §§goto(addr130);
               }
               if(!_loc6_)
               {
                  break;
               }
               §§goto(addr107);
            }
            return;
         }
         §§goto(addr130);
      }
   }
}
