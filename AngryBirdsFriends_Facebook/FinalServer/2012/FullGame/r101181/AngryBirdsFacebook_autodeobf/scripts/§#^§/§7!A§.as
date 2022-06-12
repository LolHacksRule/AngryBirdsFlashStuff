package §#^§
{
   import §0!G§.§1-§;
   import §2!i§.§'M§;
   import §2!i§.§7'§;
   import §2!i§.§=!&§;
   import §4!e§.§-"E§;
   import §4!e§.§08§;
   import §4!e§.§5!a§;
   import §4!e§.§`'§;
   import flash.display.Graphics;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §7!A§ extends Sprite
   {
       
      
      protected var §=!a§:§08§;
      
      protected var §"7§:MovieClip;
      
      protected var §3!E§:§1-§;
      
      public function §7!A§(param1:§1-§)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            super();
            loop0:
            while(true)
            {
               this.§3!E§ = param1;
               loop1:
               while(true)
               {
                  this.§"7§ = new MovieClip();
                  loop2:
                  while(_loc3_)
                  {
                     addChild(this.§"7§);
                     while(_loc3_)
                     {
                        this.§"7§.mouseEnabled = false;
                        loop4:
                        while(_loc3_)
                        {
                           continue loop2;
                           while(true)
                           {
                              this.mouseEnabled = false;
                              if(_loc3_ || _loc2_)
                              {
                                 break;
                              }
                              continue loop4;
                           }
                           if(_loc3_ || _loc2_)
                           {
                              return;
                           }
                           continue loop2;
                        }
                     }
                     continue loop1;
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr75);
      }
      
      public function init(param1:XML, param2:MovieClip = null) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.§=!a§ = new §08§(param1,null,this,param2);
         }
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            this.§6v§();
            while(true)
            {
               this.§=!a§.clear();
               §§goto(addr79);
            }
         }
         addr79:
         while(true)
         {
            this.§=!a§ = null;
            if(!_loc1_)
            {
               if(_loc2_)
               {
                  break;
               }
               continue loop0;
            }
         }
         while(true)
         {
            if(numChildren <= 0)
            {
               if(_loc2_ || _loc2_)
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
      
      public function activateView() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            §§push(this.§=!a§);
            if(_loc2_ || _loc2_)
            {
               if(§§pop())
               {
                  if(_loc2_ || this)
                  {
                     addr88:
                     this.§=!a§.setActiveStatus(true);
                  }
                  while(true)
                  {
                     addr51:
                     loop2:
                     while(!(_loc1_ && _loc2_))
                     {
                        while(true)
                        {
                           this.§"7§.visible = visible;
                           if(!_loc1_)
                           {
                              break;
                           }
                           continue loop2;
                        }
                        return;
                     }
                  }
                  addr90:
               }
               while(true)
               {
                  visible = true;
                  §§goto(addr51);
                  §§goto(addr90);
               }
            }
            §§goto(addr88);
         }
         §§goto(addr68);
      }
      
      public function §4"@§(param1:§1-§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§6v§();
            while(true)
            {
               this.§3!E§ = param1;
               loop1:
               while(_loc2_ || _loc2_)
               {
                  while(true)
                  {
                     this.activateView();
                     if(_loc2_ || _loc3_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr70);
      }
      
      public function §6v§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            §§push(this.§=!a§);
            if(_loc2_)
            {
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     addr78:
                     this.§=!a§.setActiveStatus(false);
                  }
                  while(true)
                  {
                  }
                  addr80:
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
                  while(this.§"7§.visible = visible, _loc1_ && this);
                  
                  §§goto(addr61);
               }
            }
            §§goto(addr78);
         }
         addr61:
      }
      
      public function listenerEventOccured(param1:int, param2:String, param3:§'M§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || this)
         {
            this.§3!E§.uiInteractionHandler(param1,param2,param3);
         }
      }
      
      public function setItemVisibility(param1:String, param2:Boolean) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param1)
         {
            §§push(this.§=!a§);
            if(_loc3_ || param2)
            {
               if(§§pop())
               {
                  if(!(_loc4_ && param1))
                  {
                     addr52:
                     this.§=!a§.§&"A§(param1,param2);
                  }
               }
               return;
            }
         }
         §§goto(addr52);
      }
      
      public function getItemByName(param1:String) : §7'§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            §§push(this.§=!a§);
            if(_loc3_ || this)
            {
               if(§§pop())
               {
                  if(_loc3_)
                  {
                     §§push(this.§=!a§);
                  }
                  else
                  {
                     §§goto(addr51);
                  }
               }
               §§goto(addr51);
            }
            return §§pop().getItemByName(param1);
         }
         addr51:
         return null;
      }
      
      public function setText(param1:String, param2:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:Object = this.getItemByName(param2);
         if(!_loc5_)
         {
            if(_loc3_ is §-"E§)
            {
               if(!_loc5_)
               {
                  addr39:
                  (_loc3_ as §-"E§).setText(param1);
               }
            }
            return;
         }
         §§goto(addr39);
      }
      
      public function §-W§(param1:String) : String
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:Object = this.getItemByName(param1);
         if(!(_loc4_ && _loc2_))
         {
            if(_loc2_ is §-"E§)
            {
               if(!(_loc4_ && _loc2_))
               {
                  §§goto(addr49);
               }
            }
            return "";
         }
         addr49:
         return (_loc2_ as §-"E§).§-W§();
      }
      
      public function setComponentState(param1:String, param2:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc4_)
         {
            if(_loc3_ is §=!&§)
            {
               if(_loc4_ || _loc3_)
               {
                  (_loc3_ as §=!&§).setComponentState(param1);
               }
            }
         }
      }
      
      public function getRepeaterDataXML(param1:String) : Array
      {
         return null;
      }
      
      public function §;S§(param1:String, param2:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§5!a§ = this.getItemByName(param1) as §5!a§;
         if(_loc5_)
         {
            if(_loc3_)
            {
               if(_loc5_)
               {
                  _loc3_.§5"?§(param2);
               }
            }
         }
      }
      
      public function §%d§(param1:String) : String
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§5!a§ = this.getItemByName(param1) as §5!a§;
         if(_loc3_)
         {
            if(_loc2_)
            {
               if(!_loc4_)
               {
                  return _loc2_.§,"1§;
               }
            }
         }
         return "";
      }
      
      public function §;!!§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§`'§ = null;
         for each(_loc1_ in this.§=!a§.§&!Z§)
         {
            if(_loc5_ || this)
            {
               if(!_loc1_)
               {
                  continue;
               }
               if(!(_loc5_ || _loc1_))
               {
                  continue;
               }
            }
            _loc1_.close();
         }
      }
      
      public function §@!w§() : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§`'§ = null;
         var _loc2_:int = 0;
         var _loc3_:* = this.§=!a§.§&!Z§;
         while(true)
         {
            for each(_loc1_ in _loc3_)
            {
               if(_loc5_)
               {
                  continue;
               }
               §§push(Boolean(_loc1_));
               if(_loc4_ || _loc1_)
               {
                  if(§§pop())
                  {
                     if(_loc4_ || _loc2_)
                     {
                        §§pop();
                        if(_loc5_)
                        {
                           addr85:
                           break;
                        }
                        §§push(Boolean(_loc1_.§5!d§));
                        if(_loc5_)
                        {
                           return §§pop();
                        }
                        addr81:
                        if(§§pop())
                        {
                           if(!_loc5_)
                           {
                              break;
                           }
                        }
                        continue;
                     }
                  }
               }
               §§goto(addr81);
            }
            return false;
         }
         §§goto(addr85);
         §§push(true);
      }
      
      public function §&""§(param1:int = 16777215, param2:Number = 0.5) : Sprite
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:Sprite = new Sprite();
         var _loc4_:Graphics;
         (_loc4_ = _loc3_.graphics).beginFill(param1,param2);
         if(_loc5_ || param2)
         {
            _loc4_.drawRect(0,0,this.§3!E§.getAppWidth(),this.§3!E§.getAppHeight());
         }
         do
         {
            _loc4_.endFill();
         }
         while(!_loc5_);
         
         return _loc3_;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            §§push(this.§=!a§);
            if(!_loc2_)
            {
               if(!§§pop())
               {
               }
               §§goto(addr45);
            }
            §§pop().viewWidth = param1;
         }
         addr45:
         if(!_loc2_)
         {
            §§push(this.§=!a§);
         }
      }
      
      public function set viewHeight(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            §§push(this.§=!a§);
            if(_loc3_)
            {
               if(§§pop())
               {
                  if(!_loc2_)
                  {
                     addr43:
                     this.§=!a§.viewHeight = param1;
                  }
               }
               return;
            }
         }
         §§goto(addr43);
      }
      
      public function get §[!5§() : §1-§
      {
         return this.§3!E§;
      }
      
      public function get movieClip() : MovieClip
      {
         return this.§"7§;
      }
      
      public function get §%4§() : §08§
      {
         return this.§=!a§;
      }
   }
}
