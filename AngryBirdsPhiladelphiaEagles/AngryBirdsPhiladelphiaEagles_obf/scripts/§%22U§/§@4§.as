package §"U§
{
   import §0!E§.§>q§;
   import §6v§.§@V§;
   import flash.text.TextField;
   
   public class §@4§ extends §@V§
   {
       
      
      public var §!!@§:TextField;
      
      private var §'!2§:§>q§ = null;
      
      public function §@4§(param1:XML, param2:§[Q§)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         super(param1,param2);
         loop0:
         while(true)
         {
            this.§!!@§ = mClip.getChildByName("text") as TextField;
            if(param1.@text)
            {
               continue;
            }
            while(true)
            {
               if(!param1.@tabIndex)
               {
                  while(!mClip.mouseEnabled)
                  {
                     §§goto(addr26);
                  }
                  addr18:
               }
               while(_loc4_)
               {
                  if(!(_loc4_ || param1))
                  {
                     continue loop0;
                  }
                  this.§!!@§.tabIndex = param1.@tabIndex;
                  if(!(_loc3_ && this))
                  {
                     this.setEnabled(mClip.mouseEnabled);
                     §§goto(addr18);
                  }
               }
               continue;
               return;
            }
         }
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            super.setEnabled(param1);
         }
         while(this.§!!@§)
         {
            if(_loc2_ || _loc3_)
            {
               this.§!!@§.mouseEnabled = mClip.mouseEnabled;
            }
            if(!(_loc3_ && _loc3_))
            {
               break;
            }
         }
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
            super.listenerEventOccured(param1,param2);
         }
      }
      
      public function setText(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§!!@§.text = param1;
         }
      }
      
      public function §null §() : String
      {
         return this.§!!@§.text;
      }
      
      override public function clear() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.clear();
            loop0:
            while(true)
            {
               §§push(this.§'!2§);
               if(_loc2_)
               {
                  if(!§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        this.§!!@§ = null;
                        if(_loc2_ || _loc2_)
                        {
                           if(!_loc1_)
                           {
                              break;
                           }
                           addr83:
                           while(true)
                           {
                              §§push(this.§'!2§);
                              addr85:
                              while(true)
                              {
                                 §§pop().dispose();
                                 addr86:
                                 while(true)
                                 {
                                    this.§'!2§ = null;
                                 }
                              }
                           }
                        }
                        while(_loc1_ && _loc2_)
                        {
                           §§goto(addr86);
                        }
                        continue loop0;
                        addr76:
                        while(true)
                        {
                           continue loop2;
                        }
                     }
                     return;
                  }
                  §§goto(addr83);
               }
               §§goto(addr85);
            }
         }
         §§goto(addr76);
      }
      
      public function §?o§(param1:uint, param2:uint, param3:uint) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param3)
         {
            this.§'!2§ = new §>q§(this.§!!@§,param1,param2,param3);
         }
      }
      
      public function §7B§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§'!2§.dispose();
         }
         do
         {
            this.§'!2§ = null;
         }
         while(!_loc2_);
         
      }
   }
}
