package §4!e§
{
   import §2!i§.§=!&§;
   import §<a§.§>!i§;
   import flash.text.TextField;
   
   public class §-"E§ extends §=!&§
   {
       
      
      public var §5!=§:TextField;
      
      private var §"!g§:§>!i§ = null;
      
      public function §-"E§(param1:XML, param2:§08§)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param2))
         {
            super(param1,param2);
            loop0:
            while(true)
            {
               this.§5!=§ = mClip.getChildByName("text") as TextField;
               loop1:
               while(true)
               {
                  if(!param1.@text)
                  {
                     loop3:
                     for(; param1.@tabIndex; while(true)
                     {
                        continue loop3;
                     })
                     {
                        if(!_loc3_)
                        {
                           if(_loc3_)
                           {
                              continue;
                           }
                           if(!(_loc4_ || param2))
                           {
                              continue loop1;
                           }
                           this.§5!=§.tabIndex = param1.@tabIndex;
                        }
                        while(true)
                        {
                           break loop3;
                        }
                     }
                     while(!mClip.mouseEnabled)
                     {
                        if(_loc4_ || _loc3_)
                        {
                           continue loop0;
                        }
                        addr61:
                        if(_loc4_)
                        {
                           break;
                        }
                        §§goto(addr94);
                     }
                  }
                  continue;
                  return;
               }
            }
         }
         while(true)
         {
            this.setText(param1.@text);
            §§goto(addr110);
         }
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            super.setEnabled(param1);
            while(this.§5!=§)
            {
               if(_loc2_ && _loc3_)
               {
                  break;
               }
               addr72:
               if(!(_loc3_ || _loc2_))
               {
                  continue;
               }
               addr67:
               this.§5!=§.mouseEnabled = mClip.mouseEnabled;
               §§goto(addr72);
            }
            return;
         }
         §§goto(addr67);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && this))
         {
            super.listenerEventOccured(param1,param2);
         }
      }
      
      public function setText(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§5!=§.text = param1;
         }
      }
      
      public function §-W§() : String
      {
         return this.§5!=§.text;
      }
      
      override public function clear() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            super.clear();
            loop0:
            while(true)
            {
               §§push(this.§"!g§);
               if(!_loc1_)
               {
                  if(!§§pop())
                  {
                     while(true)
                     {
                        this.§5!=§ = null;
                        if(_loc1_ && this)
                        {
                           continue;
                        }
                        if(_loc2_)
                        {
                           addr52:
                           if(!(_loc1_ && _loc1_))
                           {
                              break;
                           }
                           continue loop0;
                        }
                     }
                     return;
                  }
                  addr69:
                  continue;
               }
               addr90:
               while(true)
               {
                  §§pop().dispose();
               }
               while(true)
               {
                  this.§"!g§ = null;
                  §§goto(addr74);
               }
            }
         }
         §§goto(addr69);
      }
      
      public function §;4§(param1:uint, param2:uint, param3:uint) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            this.§"!g§ = new §>!i§(this.§5!=§,param1,param2,param3);
         }
      }
      
      public function §%S§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            this.§"!g§.dispose();
         }
         do
         {
            this.§"!g§ = null;
         }
         while(!_loc1_);
         
      }
   }
}
