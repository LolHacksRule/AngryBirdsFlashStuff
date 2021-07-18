package §9!!§
{
   import §!Y§.§[o§;
   import §2]§.§#H§;
   import §>-§.§6H§;
   import §>-§.ColorFadeLayerEvent;
   import §[v§.§+B§;
   import §`W§.§`H§;
   
   public class Popup extends §+B§
   {
       
      
      protected const §;! §:Number = 0.25;
      
      protected var §^!D§:§6H§;
      
      protected var §%!#§:§#H§;
      
      protected var §]T§:Boolean = false;
      
      public function Popup(param1:XML, param2:§#H§)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super(param1,param2.container);
            while(true)
            {
               this.§^!D§ = new §6H§(0,0,0,0);
               while(_loc3_)
               {
                  while(!(_loc4_ && param1))
                  {
                     this.§%!#§ = param2;
                     if(!_loc4_)
                     {
                        return;
                     }
                  }
               }
            }
         }
         while(true)
         {
            param2.container.§&!?§(this);
            §§goto(addr55);
         }
      }
      
      public function deActivate() : void
      {
      }
      
      override public function open(param1:Boolean = true) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         super.open(param1);
         loop0:
         do
         {
            §[o§.pause();
            loop1:
            while(true)
            {
               mClip.addChildAt(this.§^!D§,0);
               while(!param1)
               {
                  §§push(this.§^!D§);
                  if(_loc3_)
                  {
                     §§push(0.7);
                     if(_loc3_ || _loc2_)
                     {
                        §§pop().§,`§(§§pop());
                        if(_loc2_)
                        {
                           break;
                        }
                        if(_loc3_ || _loc2_)
                        {
                           continue loop1;
                        }
                        continue;
                        continue;
                     }
                  }
                  else
                  {
                     addr82:
                     §§push(0.7);
                  }
                  §§pop().§@2§(§§pop(),this.§;! §);
                  return;
               }
               continue loop0;
            }
         }
         while(!_loc3_);
         
         §§goto(addr82);
         §§push(this.§^!D§);
      }
      
      public function preClose(param1:Boolean = true) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(param1);
         if(!_loc2_)
         {
            §§push(!§§pop());
            if(_loc3_ || this)
            {
               addr114:
               if(!§§pop())
               {
                  loop0:
                  while(true)
                  {
                     §§pop();
                     addr117:
                     while(true)
                     {
                        §§push(this.§^!D§);
                        continue loop0;
                     }
                  }
                  addr116:
               }
               while(true)
               {
                  if(!§§pop())
                  {
                     loop3:
                     while(true)
                     {
                        §§push(this.§^!D§);
                        loop4:
                        while(true)
                        {
                           §§pop().§@2§(0,this.§;! §);
                           while(true)
                           {
                              if(_loc3_)
                              {
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    if(_loc2_)
                                    {
                                       addr100:
                                       this.close();
                                       break;
                                    }
                                    §§push(this.§^!D§);
                                    if(_loc2_)
                                    {
                                       continue loop4;
                                    }
                                    if(_loc3_)
                                    {
                                       §§pop().addEventListener(ColorFadeLayerEvent.§+!>§,this.§1@§);
                                       if(_loc2_ && param1)
                                       {
                                          continue;
                                       }
                                       if(_loc3_)
                                       {
                                          return;
                                       }
                                       §§goto(addr117);
                                    }
                                    §§goto(addr89);
                                 }
                                 break;
                              }
                              continue loop3;
                           }
                           return;
                        }
                     }
                  }
                  §§goto(addr100);
               }
            }
            §§goto(addr116);
         }
         §§goto(addr114);
      }
      
      protected function §1@§(param1:ColorFadeLayerEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.close();
         }
      }
      
      override public function close() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(this.§]T§)
         {
            return;
         }
         §§push(this.§^!D§);
         if(!(_loc2_ && this))
         {
            if(§§pop())
            {
               if(_loc3_)
               {
                  addr83:
                  §§push(this.§^!D§);
                  while(true)
                  {
                     §§pop().removeEventListener(ColorFadeLayerEvent.§+!>§,this.§1@§);
                  }
                  addr83:
               }
               loop0:
               while(true)
               {
                  mClip.removeChild(this.§^!D§);
                  loop1:
                  while(true)
                  {
                     loop2:
                     while(true)
                     {
                        §§push(this.§^!D§);
                        if(_loc2_ && this)
                        {
                           break;
                        }
                        §§pop().clean();
                        while(_loc3_)
                        {
                           this.§^!D§ = null;
                           if(_loc2_ && _loc3_)
                           {
                              continue;
                           }
                           if(!(_loc3_ || this))
                           {
                              continue loop0;
                           }
                           if(false)
                           {
                              continue loop2;
                           }
                           addr94:
                           var _loc1_:§`H§ = this.§%!#§.getItemByName("Container_Popup");
                           if(_loc3_)
                           {
                              if(_loc1_ != null)
                              {
                                 while(true)
                                 {
                                    _loc1_.setVisibility(false);
                                    addr153:
                                    if(!(_loc3_ || this))
                                    {
                                       continue;
                                    }
                                    addr163:
                                    this.§%!#§.container.§[4§(this);
                                    loop7:
                                    while(true)
                                    {
                                       addr124:
                                       while(true)
                                       {
                                          this.§]T§ = true;
                                          addr128:
                                          while(true)
                                          {
                                             §[o§.resume();
                                             if(!_loc2_)
                                             {
                                                mClip.dispatchEvent(new §9!"§(§9!"§.§`y§,this));
                                                if(!_loc2_)
                                                {
                                                   break;
                                                }
                                                continue loop7;
                                             }
                                          }
                                          return;
                                          continue loop7;
                                       }
                                    }
                                 }
                                 addr169:
                              }
                              while(true)
                              {
                                 §§push(this.§%!#§);
                                 if(_loc3_ || this)
                                 {
                                    §§push(§§pop().container);
                                    if(!_loc2_)
                                    {
                                       if(§§pop())
                                       {
                                          §§goto(addr153);
                                       }
                                       §§goto(addr124);
                                    }
                                    §§goto(addr163);
                                 }
                                 break;
                                 §§goto(addr169);
                              }
                              §§goto(addr163);
                           }
                           §§goto(addr128);
                        }
                        continue loop1;
                     }
                     §§goto(addr83);
                  }
               }
            }
            §§goto(addr94);
         }
         §§goto(addr83);
      }
   }
}
