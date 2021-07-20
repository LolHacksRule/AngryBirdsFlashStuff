package §>M§
{
   import §!V§.§-!I§;
   import §'!D§.§0j§;
   import flash.text.TextField;
   
   public class §'V§ extends §0j§
   {
       
      
      public var §2!%§:TextField;
      
      private var §[0§:§-!I§ = null;
      
      public function §'V§(param1:XML, param2:§<6§)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            super(param1,param2);
            loop0:
            while(true)
            {
               this.§2!%§ = mClip.getChildByName("text") as TextField;
               while(true)
               {
                  if(param1.@text)
                  {
                     while(!_loc4_)
                     {
                        if(!_loc3_)
                        {
                           continue loop0;
                        }
                        while(true)
                        {
                           this.setText(param1.@text);
                           addr89:
                           while(true)
                           {
                           }
                        }
                     }
                     continue;
                     addr81:
                  }
                  while(true)
                  {
                     if(!param1.@tabIndex)
                     {
                        while(true)
                        {
                           if(!mClip.mouseEnabled)
                           {
                              §§goto(addr27);
                           }
                           break;
                           §§goto(addr76);
                        }
                        addr19:
                     }
                     loop4:
                     while(_loc3_ || _loc3_)
                     {
                        if(_loc3_)
                        {
                           this.§2!%§.tabIndex = param1.@tabIndex;
                           while(true)
                           {
                              addr27:
                              if(_loc3_ || this)
                              {
                                 this.setEnabled(mClip.mouseEnabled);
                              }
                              if(_loc3_)
                              {
                                 if(_loc3_ || this)
                                 {
                                    §§goto(addr19);
                                 }
                                 continue loop4;
                              }
                           }
                           addr76:
                        }
                        else
                        {
                           §§goto(addr81);
                        }
                     }
                     continue;
                     return;
                  }
               }
            }
         }
         §§goto(addr85);
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            super.setEnabled(param1);
         }
         while(this.§2!%§)
         {
            if(_loc2_ || _loc2_)
            {
               this.§2!%§.mouseEnabled = mClip.mouseEnabled;
            }
            if(_loc2_ || this)
            {
               break;
            }
         }
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param1))
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
            this.§2!%§.text = param1;
         }
      }
      
      public function getText() : String
      {
         return this.§2!%§.text;
      }
      
      override public function clear() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            super.clear();
         }
         while(true)
         {
            §§push(this.§[0§);
            if(_loc1_)
            {
               if(§§pop())
               {
                  loop1:
                  while(true)
                  {
                     §§push(this.§[0§);
                     addr84:
                     while(true)
                     {
                        §§pop().dispose();
                        addr85:
                        while(true)
                        {
                           this.§[0§ = null;
                           continue loop1;
                        }
                     }
                  }
               }
               while(true)
               {
                  this.§2!%§ = null;
                  if(_loc1_ || _loc1_)
                  {
                     if(!_loc2_)
                     {
                        return;
                     }
                     §§goto(addr85);
                  }
                  §§goto(addr56);
                  §§goto(addr63);
               }
               continue;
            }
            §§goto(addr84);
         }
      }
      
      public function §"%§(param1:uint, param2:uint, param3:uint) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && this))
         {
            this.§[0§ = new §-!I§(this.§2!%§,param1,param2,param3);
         }
      }
      
      public function §<!P§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§[0§.dispose();
         }
         do
         {
            this.§[0§ = null;
         }
         while(_loc1_);
         
      }
   }
}
