package §=!7§
{
   import §<!1§.§!v§;
   import §@y§.§>!D§;
   import flash.text.TextField;
   
   public class §!!]§ extends §>!D§
   {
       
      
      public var §<!g§:TextField;
      
      private var §+" §:§!v§ = null;
      
      public function §!!]§(param1:XML, param2:§6W§)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param2)
         {
            super(param1,param2);
            loop0:
            while(true)
            {
               this.§<!g§ = mClip.getChildByName("text") as TextField;
               loop1:
               while(true)
               {
                  if(param1.@text)
                  {
                     if(!_loc4_)
                     {
                        this.setText(param1.@text);
                     }
                     while(true)
                     {
                        addr72:
                        if(!(_loc4_ && param2))
                        {
                           continue loop1;
                        }
                     }
                     addr109:
                  }
                  while(param1.@tabIndex)
                  {
                     if(_loc4_ && param2)
                     {
                        continue loop0;
                     }
                     §§goto(addr72);
                     §§goto(addr109);
                  }
                  loop5:
                  while(!mClip.mouseEnabled)
                  {
                     if(_loc3_ || _loc3_)
                     {
                        this.setEnabled(mClip.mouseEnabled);
                     }
                     if(_loc3_ || param1)
                     {
                        break;
                     }
                     continue loop0;
                     while(true)
                     {
                        continue loop5;
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr98);
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            super.setEnabled(param1);
            while(this.§<!g§)
            {
               if(_loc2_)
               {
                  if(!_loc3_)
                  {
                     this.§<!g§.mouseEnabled = mClip.mouseEnabled;
                     addr56:
                     break;
                  }
                  continue;
               }
               §§goto(addr56);
            }
            return;
         }
         §§goto(addr56);
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
      
      public function setText(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§<!g§.text = param1;
         }
      }
      
      public function §3!f§() : String
      {
         return this.§<!g§.text;
      }
      
      override public function clear() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super.clear();
         }
         loop0:
         while(true)
         {
            §§push(this.§+" §);
            if(_loc1_)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§+" §);
                     addr79:
                     while(true)
                     {
                        §§pop().dispose();
                        addr80:
                        while(true)
                        {
                           this.§+" § = null;
                           addr58:
                           while(true)
                           {
                              if(_loc2_)
                              {
                                 continue loop0;
                              }
                           }
                        }
                     }
                     addr46:
                     if(_loc1_ || _loc1_)
                     {
                        return;
                     }
                  }
               }
               while(true)
               {
                  this.§<!g§ = null;
                  if(!(_loc1_ || _loc2_))
                  {
                     continue;
                  }
                  if(!_loc2_)
                  {
                     §§goto(addr46);
                  }
                  §§goto(addr80);
               }
               continue;
            }
            §§goto(addr79);
         }
      }
      
      public function §;=§(param1:uint, param2:uint, param3:uint) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param2))
         {
            this.§+" § = new §!v§(this.§<!g§,param1,param2,param3);
         }
      }
      
      public function §,=§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            this.§+" §.dispose();
            do
            {
               this.§+" § = null;
            }
            while(!(_loc2_ || this));
            
         }
      }
   }
}
