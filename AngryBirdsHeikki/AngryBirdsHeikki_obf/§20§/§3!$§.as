package §20§
{
   import §5!1§.§"!X§;
   import §8P§.§&-§;
   import §9!@§.§-k§;
   import §<u§.§]!Q§;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   
   public class §3!$§ extends Popup
   {
       
      
      private var §@^§:Sprite;
      
      public function §3!$§(param1:XML, param2:§]!Q§, param3:Sprite)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            §+!_§ = new §-k§(0,0,0,0,false);
         }
         while(true)
         {
            super(param1,param2);
            while(!_loc5_)
            {
               this.setVisibility(false);
               do
               {
                  this.§@^§ = param3;
               }
               while(_loc5_);
               
               if(_loc4_)
               {
                  return;
               }
            }
         }
      }
      
      override public function open(param1:Boolean = true) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            if(param1)
            {
               loop0:
               while(true)
               {
                  getItemByName("Container_Tutorial").mClip.scaleX = 0;
                  loop1:
                  while(true)
                  {
                     getItemByName("Container_Tutorial").mClip.scaleY = 0;
                     while(true)
                     {
                        if(§@J§ == null)
                        {
                           loop4:
                           while(true)
                           {
                              §@J§ = §"!X§.§ s§.§%!;§(this.getItemByName("Container_Tutorial").mClip,{
                                 "scaleX":1,
                                 "scaleY":1
                              },{
                                 "scaleX":0,
                                 "scaleY":0
                              },0.2,§"!X§.§<!e§);
                              loop5:
                              while(true)
                              {
                                 §@J§.play();
                                 loop6:
                                 while(true)
                                 {
                                    if(_loc4_)
                                    {
                                       do
                                       {
                                          (mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer).addChild(this.§@^§);
                                          while(!_loc3_)
                                          {
                                             continue loop5;
                                          }
                                          continue loop6;
                                       }
                                       while(false);
                                       
                                       var _loc2_:§&-§ = §>K§.getItemByName("HighScoreSideBar");
                                       if(_loc4_)
                                       {
                                          if(_loc2_ != null)
                                          {
                                             if(!_loc3_)
                                             {
                                                addr151:
                                                §>K§.container.setObjectToFront(_loc2_);
                                             }
                                          }
                                          return;
                                       }
                                       §§goto(addr151);
                                       addr35:
                                    }
                                 }
                                 continue loop4;
                              }
                           }
                        }
                        while(_loc4_)
                        {
                           continue loop0;
                        }
                        continue loop1;
                     }
                  }
               }
            }
            §§goto(addr35);
         }
         §§goto(addr111);
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            super.preClose(param1);
            loop0:
            for(; param1; if(!(_loc2_ || param1))
            {
               continue;
            })
            {
               if(_loc2_ || param1)
               {
                  continue;
               }
               addr98:
               loop1:
               while(true)
               {
                  §@J§.stop();
                  loop2:
                  while(true)
                  {
                     addr34:
                     while(true)
                     {
                        §@J§ = §"!X§.§ s§.§%!;§(this.getItemByName("Container_Tutorial").mClip,{
                           "scaleX":0,
                           "scaleY":0
                        },null,0.2,§"!X§.§@4§);
                        while(!_loc3_)
                        {
                           if(!_loc3_)
                           {
                              §@J§.play();
                              if(_loc2_)
                              {
                                 break loop0;
                              }
                              continue;
                              continue;
                           }
                           continue loop1;
                        }
                        continue loop2;
                     }
                  }
               }
            }
            return;
         }
         if(§@J§ != null)
         {
            §§goto(addr98);
         }
         §§goto(addr34);
      }
      
      override public function close() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            super.close();
         }
         var _loc1_:DisplayObjectContainer = mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer;
         if(!_loc3_)
         {
            _loc1_.removeChild(this.§@^§);
            do
            {
               mClip.getChildByName("Container_Tutorial").visible = false;
            }
            while(!(_loc2_ || this));
            
         }
      }
   }
}
