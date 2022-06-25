package §"$§
{
   import §=!5§.§`X§;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class §3!R§ extends Popup
   {
       
      
      private var §2!_§:Sprite;
      
      public function §3!R§(data:XML, currentUIView:§`X§, tutorialSprite:Sprite)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || data)
         {
         }
         if(_loc4_)
         {
            loop0:
            while(true)
            {
               addr134:
               while(true)
               {
                  continue loop0;
               }
            }
         }
         while(true)
         {
            this.setVisibility(false);
            §§goto(addr88);
         }
      }
      
      override public function open(useFadeEffect:Boolean = true) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_ || container)
         {
         }
         if(_loc7_ || x)
         {
            loop0:
            while(true)
            {
               addr74:
               while(true)
               {
                  continue loop0;
               }
            }
         }
         §§goto(addr54);
      }
      
      override public function preClose(useFadeEffect:Boolean = true) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc4_)
         {
         }
         if(!(_loc3_ && _loc3_))
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  addr49:
                  if(!(_loc4_ || _loc3_))
                  {
                     continue;
                  }
                  if(_loc4_)
                  {
                     if(_loc3_)
                     {
                        continue loop0;
                     }
                     if(false)
                     {
                        loop3:
                        while(true)
                        {
                           super.preClose(useFadeEffect);
                           addr42:
                           while(true)
                           {
                              if(_loc4_ || _loc3_)
                              {
                                 §§goto(addr49);
                              }
                              else
                              {
                                 while(true)
                                 {
                                    continue loop3;
                                 }
                                 addr69:
                              }
                           }
                           continue loop1;
                        }
                     }
                     var container:DisplayObjectContainer = mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer;
                     if(!(_loc3_ && useFadeEffect))
                     {
                        while(true)
                        {
                           container.removeChild(this.§2!_§);
                           addr132:
                           while(!_loc3_)
                           {
                           }
                        }
                     }
                     while(true)
                     {
                        mClip.getChildByName("Container_Tutorial").visible = false;
                        for(; !_loc3_; if(!_loc3_)
                        {
                           return;
                        })
                        {
                           if(_loc4_)
                           {
                              continue;
                           }
                           §§goto(addr132);
                        }
                     }
                  }
                  §§goto(addr42);
               }
            }
         }
         §§goto(addr69);
      }
      
      override public function close() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
         }
         if(_loc2_ || this)
         {
         }
         while(true)
         {
            super.close();
            while(_loc2_ || _loc2_)
            {
               if(!_loc1_)
               {
                  return;
               }
            }
         }
      }
   }
}
