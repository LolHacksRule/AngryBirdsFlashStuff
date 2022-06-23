package §%4§
{
   import §+!B§.§[y§;
   import §0!#§.§0K§;
   import flash.text.TextField;
   
   public class §`a§ extends §0K§
   {
       
      
      public var §@w§:TextField;
      
      private var §+!?§:§[y§ = null;
      
      public function §`a§(param1:XML, param2:§4!=§)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         super(param1,param2);
         if(!(_loc4_ && param1))
         {
            this.§@w§ = mClip.getChildByName("text") as TextField;
            if(_loc3_ || _loc3_)
            {
               if(param1.@text)
               {
                  if(_loc3_)
                  {
                     this.setText(param1.@text);
                  }
                  §§goto(addr85);
               }
               if(param1.@tabIndex)
               {
                  addr73:
                  this.§@w§.tabIndex = param1.@tabIndex;
               }
               if(!mClip.mouseEnabled)
               {
                  this.setEnabled(mClip.mouseEnabled);
               }
               §§goto(addr85);
            }
            §§goto(addr73);
         }
         addr85:
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            super.setEnabled(param1);
            if(_loc3_)
            {
               if(this.§@w§)
               {
                  if(!_loc2_)
                  {
                     addr44:
                     this.§@w§.mouseEnabled = mClip.mouseEnabled;
                  }
               }
               return;
            }
         }
         §§goto(addr44);
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
         if(!(_loc3_ && param1))
         {
            this.§@w§.text = param1;
         }
      }
      
      public function §'Y§() : String
      {
         return this.§@w§.text;
      }
      
      override public function clear() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            super.clear();
            if(_loc1_)
            {
               §§push(this.§+!?§);
               if(_loc1_)
               {
                  if(§§pop())
                  {
                     if(_loc1_ || _loc1_)
                     {
                        addr61:
                        this.§+!?§.dispose();
                        if(_loc1_)
                        {
                           addr64:
                           this.§+!?§ = null;
                           if(_loc1_)
                           {
                              addr69:
                              this.§@w§ = null;
                           }
                        }
                        §§goto(addr69);
                     }
                     return;
                  }
                  §§goto(addr69);
               }
               §§goto(addr61);
            }
         }
         §§goto(addr64);
      }
      
      public function §"$§(param1:uint, param2:uint, param3:uint) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            this.§+!?§ = new §[y§(this.§@w§,param1,param2,param3);
         }
      }
      
      public function §9!<§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§+!?§.dispose();
            if(!(_loc1_ && _loc1_))
            {
               this.§+!?§ = null;
            }
         }
      }
   }
}
