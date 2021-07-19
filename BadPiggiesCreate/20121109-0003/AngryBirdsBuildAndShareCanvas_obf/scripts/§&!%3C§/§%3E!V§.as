package §&!<§
{
   import §;<§.§'B§;
   import §=!7§.§!!]§;
   import §=!7§.§3!b§;
   import §=!7§.§6W§;
   import §=!7§.§>!;§;
   import §@y§.§0"4§;
   import §@y§.§0=§;
   import §@y§.§>!D§;
   import flash.display.Graphics;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §>!V§ extends Sprite
   {
       
      
      protected var §,8§:§6W§;
      
      protected var §'Q§:MovieClip;
      
      protected var §4"8§:§'B§;
      
      public function §>!V§(param1:§'B§)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            super();
            loop0:
            while(true)
            {
               this.§4"8§ = param1;
               while(true)
               {
                  this.§'Q§ = new MovieClip();
                  continue loop0;
                  addr60:
                  if(!(_loc2_ && _loc3_))
                  {
                     this.mouseEnabled = false;
                     addr67:
                     if(_loc3_ || _loc2_)
                     {
                        return;
                     }
                     loop5:
                     while(true)
                     {
                        if(!_loc2_)
                        {
                           if(_loc2_ && this)
                           {
                              break;
                           }
                           §§goto(addr60);
                           addr43:
                        }
                        else
                        {
                           while(true)
                           {
                              this.§'Q§.mouseEnabled = false;
                              continue loop5;
                           }
                           addr73:
                        }
                     }
                     continue loop0;
                  }
               }
            }
         }
         while(true)
         {
            addChild(this.§'Q§);
            §§goto(addr73);
         }
      }
      
      public function init(param1:XML, param2:MovieClip = null) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.§,8§ = new §6W§(param1,null,this,param2);
         }
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§!c§();
            do
            {
               this.§,8§.clear();
               do
               {
                  this.§,8§ = null;
               }
               while(_loc1_ && this);
               
            }
            while(_loc1_ && _loc1_);
            
         }
         while(true)
         {
            if(numChildren <= 0)
            {
               if(!_loc1_)
               {
                  break;
               }
            }
            else
            {
               removeChildAt(0);
            }
         }
      }
      
      public function §6!<§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§,8§);
            if(_loc2_ || _loc1_)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§,8§);
                     addr88:
                     while(true)
                     {
                        §§pop().setActiveStatus(true);
                        addr90:
                        while(true)
                        {
                        }
                     }
                     addr53:
                     if(_loc1_ && _loc2_)
                     {
                        continue;
                     }
                     return;
                     addr60:
                  }
               }
               loop1:
               while(true)
               {
                  visible = true;
                  addr65:
                  while(true)
                  {
                     this.§'Q§.visible = visible;
                     if(!(_loc2_ || _loc2_))
                     {
                        continue;
                     }
                     if(_loc1_ && _loc1_)
                     {
                        continue loop1;
                     }
                     §§goto(addr53);
                  }
                  §§goto(addr60);
               }
            }
            §§goto(addr88);
         }
         §§goto(addr65);
      }
      
      public function §7!G§(param1:§'B§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§!c§();
            while(true)
            {
               this.§4"8§ = param1;
               §§goto(addr66);
            }
         }
         addr66:
         while(true)
         {
            this.§6!<§();
            if(_loc3_ || this)
            {
               if(_loc3_ || param1)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function §!c§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§,8§);
            if(!_loc1_)
            {
               if(§§pop())
               {
                  if(_loc2_ || _loc1_)
                  {
                     addr73:
                     this.§,8§.setActiveStatus(false);
                  }
                  while(true)
                  {
                  }
                  addr75:
               }
               loop1:
               while(true)
               {
                  visible = false;
                  do
                  {
                     if(_loc2_)
                     {
                        continue;
                     }
                     continue loop1;
                  }
                  while(this.§'Q§.visible = visible, !_loc2_);
                  
                  §§goto(addr41);
               }
            }
            §§goto(addr73);
         }
         addr41:
      }
      
      public function listenerEventOccured(param1:int, param2:String, param3:§0=§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            this.§4"8§.uiInteractionHandler(param1,param2,param3);
         }
      }
      
      public function setItemVisibility(param1:String, param2:Boolean) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §§push(this.§,8§);
            if(!_loc3_)
            {
               if(!§§pop())
               {
               }
               §§goto(addr56);
            }
            §§pop().§9"$§(param1,param2);
         }
         addr56:
         if(_loc4_ || param2)
         {
            §§push(this.§,8§);
         }
      }
      
      public function getItemByName(param1:String) : §0"4§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            §§push(this.§,8§);
            if(_loc3_)
            {
               if(§§pop())
               {
                  if(!_loc2_)
                  {
                     §§goto(addr53);
                  }
               }
               return null;
            }
            §§goto(addr53);
         }
         addr53:
         return this.§,8§.getItemByName(param1);
      }
      
      public function setText(param1:String, param2:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:Object = this.getItemByName(param2);
         if(!(_loc4_ && _loc3_))
         {
            if(_loc3_ is §!!]§)
            {
               if(_loc5_)
               {
                  addr55:
                  (_loc3_ as §!!]§).setText(param1);
               }
            }
            return;
         }
         §§goto(addr55);
      }
      
      public function §3!f§(param1:String) : String
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Object = this.getItemByName(param1);
         if(_loc4_ || _loc3_)
         {
            if(_loc2_ is §!!]§)
            {
               if(!_loc3_)
               {
                  §§goto(addr55);
               }
            }
            return "";
         }
         addr55:
         return (_loc2_ as §!!]§).§3!f§();
      }
      
      public function setComponentState(param1:String, param2:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc4_)
         {
            if(_loc3_ is §>!D§)
            {
               if(_loc4_ || this)
               {
                  addr54:
                  (_loc3_ as §>!D§).setComponentState(param1);
               }
            }
            return;
         }
         §§goto(addr54);
      }
      
      public function getRepeaterDataXML(param1:String) : Array
      {
         return null;
      }
      
      public function §-!@§(param1:String, param2:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§3!b§ = this.getItemByName(param1) as §3!b§;
         if(_loc4_)
         {
            if(_loc3_)
            {
               if(!(_loc5_ && param1))
               {
                  _loc3_.§9N§(param2);
               }
            }
         }
      }
      
      public function §9M§(param1:String) : String
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§3!b§ = this.getItemByName(param1) as §3!b§;
         if(!_loc4_)
         {
            if(_loc2_)
            {
               if(!_loc4_)
               {
                  §§goto(addr49);
               }
            }
            return "";
         }
         addr49:
         return _loc2_.§]!G§;
      }
      
      public function §`M§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§>!;§ = null;
         for each(_loc1_ in this.§,8§.§[z§)
         {
            if(!(_loc5_ && _loc1_))
            {
               if(!_loc1_)
               {
                  continue;
               }
               if(!_loc4_)
               {
                  continue;
               }
            }
            _loc1_.close();
         }
      }
      
      public function §2!J§() : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§>!;§ = null;
         var _loc2_:int = 0;
         var _loc3_:* = this.§,8§.§[z§;
         while(true)
         {
            for each(_loc1_ in _loc3_)
            {
               if(_loc5_ || this)
               {
                  §§push(Boolean(_loc1_));
                  if(_loc5_)
                  {
                     if(§§pop())
                     {
                        if(_loc5_)
                        {
                           §§pop();
                           if(_loc5_)
                           {
                              §§push(Boolean(_loc1_.§'">§));
                              if(_loc4_)
                              {
                              }
                              §§goto(addr81);
                           }
                           break;
                        }
                     }
                     if(§§pop())
                     {
                        if(!_loc4_)
                        {
                           break;
                        }
                     }
                     continue;
                  }
                  §§goto(addr81);
               }
               break;
            }
            return false;
         }
         addr81:
         true;
         return §§pop();
      }
      
      public function §^s§(param1:int = 16777215, param2:Number = 0.5) : Sprite
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:Sprite = new Sprite();
         var _loc4_:Graphics;
         (_loc4_ = _loc3_.graphics).beginFill(param1,param2);
         if(!_loc6_)
         {
            _loc4_.drawRect(0,0,this.§4"8§.getAppWidth(),this.§4"8§.getAppHeight());
            do
            {
               _loc4_.endFill();
            }
            while(_loc6_ && param2);
            
         }
         return _loc3_;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            §§push(this.§,8§);
            if(_loc3_ || _loc2_)
            {
               if(!§§pop())
               {
               }
               §§goto(addr65);
            }
            §§pop().viewWidth = param1;
         }
         addr65:
         if(!(_loc2_ && this))
         {
            §§push(this.§,8§);
         }
      }
      
      public function set viewHeight(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.§,8§);
            if(!_loc3_)
            {
               if(!§§pop())
               {
               }
               §§goto(addr49);
            }
            §§pop().viewHeight = param1;
         }
         addr49:
         if(_loc2_)
         {
            §§push(this.§,8§);
         }
      }
      
      public function get §'"8§() : §'B§
      {
         return this.§4"8§;
      }
      
      public function get movieClip() : MovieClip
      {
         return this.§'Q§;
      }
      
      public function get container() : §6W§
      {
         return this.§,8§;
      }
   }
}
