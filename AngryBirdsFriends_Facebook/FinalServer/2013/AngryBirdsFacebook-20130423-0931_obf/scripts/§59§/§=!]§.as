package §59§
{
   import com.rovio.assets.§?q§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   
   public class §=!]§ extends Sprite
   {
       
      
      private var §6"2§:MovieClip;
      
      public function §=!]§()
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc1_))
         {
            super();
         }
         var _loc1_:Class = §?q§.§ q§("ItemBoughtCheckmark");
         if(_loc2_ || this)
         {
            this.§6"2§ = new _loc1_();
            while(true)
            {
               this.§6"2§.gotoAndPlay(1);
               loop1:
               while(_loc2_)
               {
                  while(true)
                  {
                     addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
                     do
                     {
                        addChild(this.§6"2§);
                     }
                     while(!(_loc2_ || this));
                     
                     if(_loc2_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr92);
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            if(this.§6"2§.currentFrame >= this.§6"2§.totalFrames)
            {
               if(_loc2_ || _loc3_)
               {
                  this.dispose();
               }
            }
         }
      }
      
      private function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
            loop0:
            while(true)
            {
               §§push(Boolean(parent));
               if(!(_loc2_ && _loc2_))
               {
                  if(!§§pop())
                  {
                     while(true)
                     {
                        if(§§pop())
                        {
                           if(!_loc2_)
                           {
                              if(_loc2_ && _loc1_)
                              {
                                 continue loop0;
                              }
                              parent.removeChild(this);
                           }
                           break;
                        }
                        §§push(Boolean(parent.contains(this)));
                        addr85:
                        break;
                        if(_loc1_)
                        {
                           continue;
                        }
                        addr77:
                        while(true)
                        {
                           §§pop();
                           continue loop0;
                        }
                        addr77:
                     }
                     return;
                  }
               }
               §§goto(addr77);
            }
         }
         §§goto(addr51);
      }
   }
}
