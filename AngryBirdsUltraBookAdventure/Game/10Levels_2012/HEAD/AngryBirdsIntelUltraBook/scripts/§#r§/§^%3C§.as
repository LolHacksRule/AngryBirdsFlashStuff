package §#r§
{
   import com.AngryBirds.friendsbar.InvitePlateAsset;
   import flash.events.MouseEvent;
   
   public class §^<§ extends BasePlate
   {
       
      
      private var §[!8§:InvitePlateAsset;
      
      public function §^<§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_ && _loc2_)
         {
         }
         if(_loc1_)
         {
            loop0:
            while(true)
            {
               super();
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     this.init();
                     loop3:
                     while(!_loc2_)
                     {
                        while(true)
                        {
                           if(_loc1_)
                           {
                              continue loop2;
                           }
                           continue loop3;
                        }
                        return;
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr72);
      }
      
      private function init() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc2_)
         {
         }
         if(!(_loc3_ && this))
         {
            if(_loc2_)
            {
               addChild(this.§[!8§ = new InvitePlateAsset());
               if(!_loc3_)
               {
                  while(true)
                  {
                     §§push(this.§[!8§);
                     addr150:
                     while(true)
                     {
                        §§pop().§@I§.mouseEnabled = false;
                     }
                  }
                  addr155:
               }
               while(true)
               {
                  loop3:
                  while(true)
                  {
                     §§push(this.§[!8§);
                     loop4:
                     while(!_loc3_)
                     {
                        §§pop().addEventListener(MouseEvent.MOUSE_OVER,this.§-!5§);
                        loop5:
                        while(true)
                        {
                           loop6:
                           while(true)
                           {
                              §§push(this.§[!8§);
                              addr108:
                              while(true)
                              {
                                 §§pop().addEventListener(MouseEvent.MOUSE_OUT,this.§;^§);
                                 addr125:
                                 while(_loc2_)
                                 {
                                    continue loop3;
                                 }
                                 addr104:
                                 §§push(this.§[!8§);
                                 continue loop5;
                                 if(!_loc2_)
                                 {
                                    continue;
                                 }
                                 if(!_loc2_)
                                 {
                                    continue loop4;
                                 }
                                 §§pop().§ !_§.gotoAndStop(1);
                                 loop10:
                                 while(_loc2_)
                                 {
                                    continue loop6;
                                    while(true)
                                    {
                                       if(_loc3_)
                                       {
                                          continue loop10;
                                       }
                                       if(!(_loc2_ || _loc1_))
                                       {
                                          continue loop3;
                                       }
                                       if(_loc2_)
                                       {
                                          break;
                                       }
                                       §§goto(addr155);
                                    }
                                    return;
                                 }
                                 §§goto(addr125);
                              }
                           }
                        }
                     }
                     §§goto(addr150);
                  }
               }
            }
         }
         §§goto(addr92);
      }
      
      override public function update() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_ && this)
         {
         }
         if(_loc2_ || _loc2_)
         {
            loop0:
            do
            {
               if(data)
               {
                  loop1:
                  while(true)
                  {
                     §]C§();
                     loop2:
                     while(true)
                     {
                        while(!_loc1_)
                        {
                           this.§[!8§.§@I§.text = data.userName || "";
                           while(!(_loc1_ && _loc1_))
                           {
                              if(!(_loc1_ && _loc2_))
                              {
                                 if(!(_loc1_ && this))
                                 {
                                    break loop2;
                                 }
                                 continue loop2;
                              }
                           }
                        }
                        continue loop0;
                     }
                     if(!_loc1_)
                     {
                        break;
                     }
                     addr113:
                     while(true)
                     {
                        continue loop1;
                     }
                  }
                  return;
               }
               if(_loc1_)
               {
               }
            }
            while(!(_loc2_ || _loc2_));
            
            return;
         }
         §§goto(addr113);
      }
      
      private function §;^§(event:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc3_)
         {
         }
         if(_loc2_ || _loc3_)
         {
            loop0:
            while(true)
            {
               do
               {
                  this.§[!8§.§ !_§.gotoAndStop(1);
                  continue loop0;
               }
               while(!(_loc2_ || this));
               
            }
         }
      }
      
      private function §-!5§(event:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || event)
         {
         }
         if(!(_loc2_ && _loc2_))
         {
            while(true)
            {
               while(!(_loc2_ && event))
               {
                  this.§[!8§.§ !_§.gotoAndStop(2);
                  loop2:
                  while(_loc3_)
                  {
                     while(_loc2_)
                     {
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr72);
      }
   }
}
