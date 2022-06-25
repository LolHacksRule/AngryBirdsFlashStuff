package §%4§
{
   import §#P§.§ !=§;
   import §#P§.§@7§;
   import §0!#§.§0K§;
   import flash.display.MovieClip;
   
   public class §7-§ extends §0K§
   {
       
      
      private var §8!+§:§ !=§;
      
      public function §7-§(param1:XML, param2:§4!=§, param3:MovieClip = null)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && this))
         {
            super(param1,param2,param3);
            targetSprite.buttonMode = true;
            targetSprite.mouseChildren = false;
            targetSprite.tabEnabled = false;
            if(!(_loc5_ && this))
            {
               §else§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
               §else§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
               if(_loc4_ || param2)
               {
                  addr81:
                  §else§(§[F§,param1.@MouseOver);
               }
               §else§(§@^§,param1.@MouseOut);
               return;
            }
         }
         §§goto(addr81);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            super.listenerEventOccured(param1,param2);
         }
      }
      
      override public function setComponentState(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(param1 == §]x§)
         {
            targetSprite.useHandCursor = false;
            targetSprite.buttonMode = false;
         }
         else
         {
            targetSprite.useHandCursor = true;
            targetSprite.buttonMode = true;
            targetSprite.mouseChildren = false;
         }
         super.setComponentState(param1);
      }
      
      override public function setComponentVisualState(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(§4%§)
         {
            §§push(param1);
            if(!(_loc3_ && _loc3_))
            {
               if(§§pop() == §?'§)
               {
                  §§push(this.§8!+§);
                  if(_loc2_)
                  {
                     §§push(null);
                     if(_loc2_ || _loc2_)
                     {
                        if(§§pop() != §§pop())
                        {
                           §§push(this.§8!+§);
                           if(!_loc3_)
                           {
                              addr45:
                              §§pop().stop();
                              if(_loc3_ && this)
                              {
                              }
                              §§goto(addr129);
                           }
                           addr128:
                           §§pop().play();
                           §§goto(addr129);
                        }
                        this.§8!+§ = §@7§.§@6§.§3!%§(mClip,{
                           "scaleX":1.1,
                           "scaleY":1.1
                        },null,0.1);
                        if(_loc2_)
                        {
                           §§push(this.§8!+§);
                           if(!_loc3_)
                           {
                              §§pop().play();
                              §§goto(addr129);
                           }
                           else
                           {
                              §§goto(addr128);
                           }
                        }
                        addr129:
                        super.setComponentVisualState(param1);
                        return;
                     }
                     addr107:
                     if(§§pop() != §§pop())
                     {
                        §§push(this.§8!+§);
                        if(!_loc3_)
                        {
                           §§pop().stop();
                        }
                        §§goto(addr128);
                     }
                     this.§8!+§ = §@7§.§@6§.§3!%§(mClip,{
                        "scaleX":1,
                        "scaleY":1
                     },null,0.1);
                     §§push(this.§8!+§);
                     §§goto(addr128);
                  }
                  §§goto(addr45);
               }
               else
               {
                  §§push(param1);
               }
               §§goto(addr45);
            }
            if(§§pop() == §4m§)
            {
               §§push(this.§8!+§);
               if(!(_loc3_ && _loc3_))
               {
                  §§goto(addr107);
                  §§push(null);
               }
               §§goto(addr128);
            }
         }
         §§goto(addr45);
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            §§push(this.§8!+§);
            if(!_loc3_)
            {
               if(§§pop())
               {
                  if(!_loc3_)
                  {
                     addr42:
                     this.§8!+§.stop();
                     if(_loc3_)
                     {
                     }
                  }
                  §§goto(addr48);
               }
               super.viewWidth = param1;
               addr48:
               return;
            }
         }
         §§goto(addr42);
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            §§push(this.§8!+§);
            if(!_loc3_)
            {
               if(§§pop())
               {
                  if(!_loc3_)
                  {
                     addr42:
                     this.§8!+§.stop();
                     if(_loc3_)
                     {
                     }
                  }
                  §§goto(addr48);
               }
               super.viewHeight = param1;
               addr48:
               return;
            }
         }
         §§goto(addr42);
      }
   }
}
