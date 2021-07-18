package §'!N§
{
   import §8P§.§4!Y§;
   import §=! §.§'!4§;
   import flash.text.TextField;
   
   public class §[!%§ extends §4!Y§
   {
       
      
      public var §^!1§:TextField;
      
      private var §%!^§:§'!4§ = null;
      
      public function §[!%§(param1:XML, param2:§2O§)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super(param1,param2);
            loop0:
            while(true)
            {
               this.§^!1§ = mClip.getChildByName("text") as TextField;
               loop1:
               while(true)
               {
                  if(param1.@text)
                  {
                     if(_loc3_ || param1)
                     {
                        this.setText(param1.@text);
                     }
                     while(true)
                     {
                     }
                     addr89:
                  }
                  loop3:
                  while(true)
                  {
                     if(param1.@tabIndex)
                     {
                        addr66:
                        while(true)
                        {
                           this.§^!1§.tabIndex = param1.@tabIndex;
                           addr71:
                           while(true)
                           {
                              if(!_loc3_)
                              {
                                 continue loop3;
                              }
                              addr73:
                           }
                        }
                        addr66:
                     }
                     while(true)
                     {
                        if(!mClip.mouseEnabled)
                        {
                           if(_loc4_ && param1)
                           {
                              addr59:
                              if(!_loc4_)
                              {
                                 break;
                              }
                              continue loop0;
                           }
                           if(_loc3_)
                           {
                              if(!_loc4_)
                              {
                                 continue loop1;
                              }
                              §§goto(addr66);
                           }
                           §§goto(addr71);
                        }
                        break;
                        §§goto(addr73);
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr66);
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            super.setEnabled(param1);
         }
         while(this.§^!1§)
         {
            if(!(_loc2_ && param1))
            {
               this.§^!1§.mouseEnabled = mClip.mouseEnabled;
            }
            if(!(_loc2_ && param1))
            {
               break;
            }
         }
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param1)
         {
            super.listenerEventOccured(param1,param2);
         }
      }
      
      public function setText(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§^!1§.text = param1;
         }
      }
      
      public function getText() : String
      {
         return this.§^!1§.text;
      }
      
      override public function clear() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super.clear();
            loop0:
            while(true)
            {
               §§push(this.§%!^§);
               if(_loc1_)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§push(this.§%!^§);
                        addr74:
                        loop3:
                        while(true)
                        {
                           §§pop().dispose();
                           addr75:
                           while(true)
                           {
                              this.§%!^§ = null;
                              addr53:
                              while(true)
                              {
                                 if(!_loc1_)
                                 {
                                    continue loop0;
                                 }
                              }
                              continue loop3;
                           }
                        }
                        addr41:
                        if(_loc1_ || _loc2_)
                        {
                           return;
                        }
                     }
                  }
                  while(true)
                  {
                     this.§^!1§ = null;
                     if(_loc2_)
                     {
                        continue;
                     }
                     if(_loc1_)
                     {
                        §§goto(addr41);
                     }
                     §§goto(addr75);
                  }
                  continue;
               }
               §§goto(addr74);
            }
         }
         §§goto(addr75);
      }
      
      public function §"!U§(param1:uint, param2:uint, param3:uint) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            this.§%!^§ = new §'!4§(this.§^!1§,param1,param2,param3);
         }
      }
      
      public function §6i§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            this.§%!^§.dispose();
         }
         do
         {
            this.§%!^§ = null;
         }
         while(_loc1_ && this);
         
      }
   }
}
