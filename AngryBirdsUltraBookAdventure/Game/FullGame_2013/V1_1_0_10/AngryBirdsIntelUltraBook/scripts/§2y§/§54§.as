package §2y§
{
   import §<-§.§!!R§;
   import §@!&§.§-0§;
   import flash.text.TextField;
   
   public class §54§ extends §-0§
   {
       
      
      public var §5!B§:TextField;
      
      private var §&E§:§!!R§ = null;
      
      public function §54§(param1:XML, param2:§^! §)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super(param1,param2);
            loop0:
            while(true)
            {
               this.§5!B§ = mClip.getChildByName("text") as TextField;
               loop1:
               while(true)
               {
                  if(!param1.@text)
                  {
                     while(true)
                     {
                        if(param1.@tabIndex)
                        {
                           while(true)
                           {
                              this.§5!B§.tabIndex = param1.@tabIndex;
                              addr71:
                              while(!_loc4_)
                              {
                              }
                              continue loop1;
                              addr42:
                              if(_loc4_ && param1)
                              {
                                 continue;
                              }
                              if(!_loc4_)
                              {
                                 §§goto(addr19);
                              }
                              addr88:
                              while(true)
                              {
                                 this.setText(param1.@text);
                                 continue loop0;
                              }
                           }
                        }
                        while(true)
                        {
                           if(!mClip.mouseEnabled)
                           {
                              if(!_loc4_)
                              {
                                 if(_loc4_)
                                 {
                                    break;
                                 }
                                 this.setEnabled(mClip.mouseEnabled);
                              }
                              if(!(_loc4_ && this))
                              {
                                 §§goto(addr42);
                              }
                              §§goto(addr71);
                           }
                           addr19:
                           return;
                        }
                        continue loop0;
                     }
                     addr62:
                  }
                  §§goto(addr88);
               }
            }
         }
         while(true)
         {
            §§goto(addr62);
         }
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            super.setEnabled(param1);
         }
         while(this.§5!B§)
         {
            if(_loc3_ || param1)
            {
               this.§5!B§.mouseEnabled = mClip.mouseEnabled;
            }
            if(_loc3_)
            {
               break;
            }
         }
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            super.listenerEventOccured(param1,param2);
         }
      }
      
      public function setText(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§5!B§.text = param1;
         }
      }
      
      public function §5Q§() : String
      {
         return this.§5!B§.text;
      }
      
      override public function clear() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super.clear();
            while(true)
            {
               §§push(this.§&E§);
               if(!_loc2_)
               {
                  if(!§§pop())
                  {
                     while(true)
                     {
                        this.§5!B§ = null;
                        if(!_loc2_)
                        {
                           break;
                        }
                        §§goto(addr54);
                        §§goto(addr63);
                     }
                     return;
                  }
                  loop1:
                  while(!_loc2_)
                  {
                     §§push(this.§&E§);
                     while(true)
                     {
                        §§pop().dispose();
                        addr75:
                        loop5:
                        while(true)
                        {
                           this.§&E§ = null;
                           addr54:
                           addr63:
                           while(true)
                           {
                              if(_loc1_ || _loc1_)
                              {
                                 if(!_loc2_)
                                 {
                                    break;
                                 }
                                 continue loop1;
                              }
                              continue loop5;
                           }
                        }
                     }
                  }
                  continue;
               }
               §§goto(addr74);
            }
         }
         §§goto(addr75);
      }
      
      public function §%1§(param1:uint, param2:uint, param3:uint) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param3)
         {
            this.§&E§ = new §!!R§(this.§5!B§,param1,param2,param3);
         }
      }
      
      public function §5!$§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§&E§.dispose();
         }
         do
         {
            this.§&E§ = null;
         }
         while(_loc2_);
         
      }
   }
}
