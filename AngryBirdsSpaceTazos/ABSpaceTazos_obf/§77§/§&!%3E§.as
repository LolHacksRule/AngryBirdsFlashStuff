package §77§
{
   import § !Y§.§1!4§;
   import §5X§.§@!!§;
   import §<W§.§]"+§;
   import flash.text.TextField;
   
   public class §&!>§ extends §@!!§
   {
       
      
      public var § !'§:TextField;
      
      private var §7!t§:§1!4§ = null;
      
      public function §&!>§(param1:XML, param2:§ ",§)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super(param1,param2);
         }
         loop0:
         while(true)
         {
            this.§ !'§ = mClip.getChildByName("text") as TextField;
            loop1:
            while(true)
            {
               if(param1.@text)
               {
                  continue;
               }
               loop4:
               while(true)
               {
                  if(param1.@tabIndex)
                  {
                     while(true)
                     {
                        this.§ !'§.tabIndex = param1.@tabIndex;
                        addr69:
                        do
                        {
                           if(!_loc3_)
                           {
                              continue loop4;
                           }
                        }
                        while(!_loc4_);
                        
                        continue loop0;
                     }
                     addr64:
                  }
                  while(!mClip.mouseEnabled)
                  {
                     if(!(_loc4_ && _loc3_))
                     {
                        if(_loc3_)
                        {
                           this.setEnabled(mClip.mouseEnabled);
                           addr40:
                           if(_loc3_)
                           {
                              addr42:
                              if(!(_loc4_ && this))
                              {
                                 break;
                              }
                              continue loop1;
                           }
                           §§goto(addr64);
                        }
                        §§goto(addr69);
                     }
                     §§goto(addr40);
                  }
                  return;
               }
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
         while(this.§ !'§)
         {
            if(_loc2_ || this)
            {
               this.§ !'§.mouseEnabled = mClip.mouseEnabled;
            }
            if(!_loc3_)
            {
               break;
            }
         }
      }
      
      override public function listenerUIEventOccured(param1:int, param2:String) : §]"+§
      {
         return super.listenerUIEventOccured(param1,param2);
      }
      
      public function setText(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§ !'§.text = param1;
         }
      }
      
      public function §5!m§() : String
      {
         return this.§ !'§.text;
      }
      
      override public function clear() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super.clear();
            do
            {
               §§push(this.§7!t§);
               if(!(_loc2_ && this))
               {
                  if(§§pop())
                  {
                     if(_loc1_)
                     {
                        addr79:
                        this.§7!t§.dispose();
                        loop3:
                        while(true)
                        {
                           this.§7!t§ = null;
                           addr51:
                           addr53:
                           while(_loc2_)
                           {
                              continue loop3;
                           }
                        }
                        addr80:
                     }
                     §§goto(addr80);
                  }
                  while(true)
                  {
                     this.§ !'§ = null;
                     if(!(_loc2_ && _loc1_))
                     {
                        break;
                     }
                     §§goto(addr51);
                     §§goto(addr53);
                  }
                  continue;
               }
               §§goto(addr79);
            }
            while(_loc2_);
            
            return;
         }
         §§goto(addr79);
      }
      
      public function §]!;§(param1:uint, param2:uint, param3:uint) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            this.§7!t§ = new §1!4§(this.§ !'§,param1,param2,param3);
         }
      }
      
      public function §@2§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§7!t§.dispose();
         }
         do
         {
            this.§7!t§ = null;
         }
         while(_loc2_);
         
      }
   }
}
