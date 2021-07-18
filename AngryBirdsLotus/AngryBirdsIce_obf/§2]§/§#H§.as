package §2]§
{
   import §[v§.§&F§;
   import §[v§.§'4§;
   import §[v§.§+B§;
   import §[v§.§?H§;
   import §]4§.§-§;
   import §`W§.§-[§;
   import §`W§.§<r§;
   import §`W§.§`H§;
   import flash.display.Graphics;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §#H§ extends Sprite
   {
       
      
      protected var §%C§:§&F§;
      
      protected var §&&§:MovieClip;
      
      protected var §3v§:§-§;
      
      public function §#H§(param1:§-§)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            super();
            do
            {
               this.§3v§ = param1;
               do
               {
                  this.§&&§ = new MovieClip();
               }
               while(_loc3_);
               
               addChild(this.§&&§);
               this.§&&§.mouseEnabled = false;
               this.mouseEnabled = false;
            }
            while(!_loc2_);
            
         }
      }
      
      public function init(param1:XML, param2:MovieClip = null) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            this.§%C§ = new §&F§(param1,null,this,param2);
         }
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§<w§();
         }
         while(true)
         {
            this.§%C§.clear();
            while(!_loc2_)
            {
               this.§%C§ = null;
               if(!_loc2_)
               {
                  while(true)
                  {
                     if(numChildren <= 0)
                     {
                        if(!(_loc2_ && _loc1_))
                        {
                           break;
                        }
                     }
                     else
                     {
                        removeChildAt(0);
                     }
                  }
                  return;
               }
            }
         }
      }
      
      public function §>T§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§%C§);
            if(_loc2_)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§%C§);
                     addr78:
                     while(true)
                     {
                        §§pop().setActiveStatus(true);
                        addr80:
                        while(true)
                        {
                        }
                     }
                  }
                  addr76:
               }
               loop1:
               while(true)
               {
                  visible = true;
                  while(!(_loc1_ && _loc2_))
                  {
                     this.§&&§.visible = visible;
                     if(!(_loc2_ || _loc2_))
                     {
                        continue;
                     }
                     if(!_loc1_)
                     {
                        break loop1;
                     }
                     §§goto(addr76);
                  }
                  §§goto(addr80);
               }
               return;
            }
            §§goto(addr78);
         }
         §§goto(addr80);
      }
      
      public function §5p§(param1:§-§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§<w§();
            while(true)
            {
               this.§3v§ = param1;
               while(_loc2_ || this)
               {
                  this.§>T§();
                  if(!_loc2_)
                  {
                     continue;
                  }
                  return;
                  addr43:
               }
            }
         }
         §§goto(addr43);
      }
      
      public function §<w§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §§push(this.§%C§);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§%C§);
                     addr72:
                     while(true)
                     {
                        §§pop().setActiveStatus(false);
                        addr74:
                        while(true)
                        {
                        }
                     }
                  }
                  addr70:
               }
               while(true)
               {
                  visible = false;
                  do
                  {
                     this.§&&§.visible = visible;
                  }
                  while(_loc2_);
                  
                  if(_loc2_)
                  {
                     continue;
                  }
                  if(_loc1_)
                  {
                     break;
                  }
                  §§goto(addr70);
               }
               return;
               addr59:
            }
            §§goto(addr72);
         }
         §§goto(addr59);
      }
      
      public function listenerEventOccured(param1:int, param2:String, param3:§-[§) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param3))
         {
            this.§3v§.uiInteractionHandler(param1,param2,param3);
         }
      }
      
      public function setItemVisibility(param1:String, param2:Boolean) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param1)
         {
            §§push(this.§%C§);
            if(_loc3_)
            {
               if(!§§pop())
               {
               }
               §§goto(addr50);
            }
            §§pop().§=W§(param1,param2);
         }
         addr50:
         if(_loc3_ || this)
         {
            §§push(this.§%C§);
         }
      }
      
      public function getItemByName(param1:String) : §`H§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§%C§);
            if(_loc3_ || _loc2_)
            {
               if(§§pop())
               {
                  if(!_loc2_)
                  {
                     §§goto(addr43);
                  }
               }
               return null;
            }
            §§goto(addr43);
         }
         addr43:
         return this.§%C§.getItemByName(param1);
      }
      
      public function setText(param1:String, param2:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc5_)
         {
            if(_loc3_ is §'4§)
            {
               if(!_loc4_)
               {
                  addr40:
                  (_loc3_ as §'4§).setText(param1);
               }
            }
            return;
         }
         §§goto(addr40);
      }
      
      public function §&!>§(param1:String) : String
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:Object = this.getItemByName(param1);
         if(!_loc4_)
         {
            if(_loc2_ is §'4§)
            {
               if(!_loc4_)
               {
                  return (_loc2_ as §'4§).§&!>§();
               }
            }
         }
         return "";
      }
      
      public function setComponentState(param1:String, param2:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:Object = this.getItemByName(param2);
         if(!(_loc4_ && param1))
         {
            if(_loc3_ is §<r§)
            {
               if(!_loc4_)
               {
                  addr45:
                  (_loc3_ as §<r§).setComponentState(param1);
               }
            }
            return;
         }
         §§goto(addr45);
      }
      
      public function getRepeaterDataXML(param1:String) : Array
      {
         return null;
      }
      
      public function §@V§(param1:String, param2:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§?H§ = this.getItemByName(param1) as §?H§;
         if(_loc4_)
         {
            if(_loc3_)
            {
               if(_loc4_)
               {
                  addr29:
                  _loc3_.§!! §(param2);
               }
            }
            return;
         }
         §§goto(addr29);
      }
      
      public function §2J§(param1:String) : String
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§?H§ = this.getItemByName(param1) as §?H§;
         if(_loc4_)
         {
            if(_loc2_)
            {
               if(!_loc3_)
               {
                  §§goto(addr40);
               }
            }
            return "";
         }
         addr40:
         return _loc2_.§&5§;
      }
      
      public function §#h§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§+B§ = null;
         var _loc2_:int = 0;
         for each(_loc1_ in this.§%C§.§1I§)
         {
            if(_loc5_)
            {
               if(!_loc1_)
               {
                  continue;
               }
               if(!(_loc5_ || _loc2_))
               {
                  continue;
               }
            }
            _loc1_.close();
         }
      }
      
      public function §@M§() : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§+B§ = null;
         var _loc2_:int = 0;
         var _loc3_:* = this.§%C§.§1I§;
         while(true)
         {
            for each(_loc1_ in _loc3_)
            {
               if(!(_loc4_ || _loc2_))
               {
                  continue;
               }
               §§push(Boolean(_loc1_));
               if(_loc4_ || _loc3_)
               {
                  if(§§pop())
                  {
                     if(_loc4_ || _loc1_)
                     {
                        addr78:
                        §§pop();
                        if(!(_loc5_ && this))
                        {
                           §§push(Boolean(_loc1_.§^!@§));
                           if(!_loc4_)
                           {
                              addr95:
                           }
                           §§goto(addr91);
                        }
                        break;
                     }
                     §§goto(addr95);
                  }
                  addr91:
                  if(§§pop())
                  {
                     if(_loc4_)
                     {
                        break;
                     }
                  }
                  continue;
                  addr95:
                  return §§pop();
               }
               §§goto(addr78);
            }
            return false;
         }
         §§goto(addr95);
         §§push(true);
      }
      
      public function §>P§(param1:int = 16777215, param2:Number = 0.5) : Sprite
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:Sprite = new Sprite();
         var _loc4_:Graphics;
         (_loc4_ = _loc3_.graphics).beginFill(param1,param2);
         if(_loc5_ || param2)
         {
            _loc4_.drawRect(0,0,this.§3v§.getAppWidth(),this.§3v§.getAppHeight());
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
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.§%C§);
            if(!(_loc3_ && _loc2_))
            {
               if(§§pop())
               {
                  if(_loc2_ || param1)
                  {
                     addr47:
                     this.§%C§.viewWidth = param1;
                  }
               }
               return;
            }
         }
         §§goto(addr47);
      }
      
      public function set viewHeight(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§%C§);
            if(_loc3_ || _loc3_)
            {
               if(!§§pop())
               {
               }
               §§goto(addr50);
            }
            §§pop().viewHeight = param1;
         }
         addr50:
         if(_loc3_ || _loc3_)
         {
            §§push(this.§%C§);
         }
      }
      
      public function get §=]§() : §-§
      {
         return this.§3v§;
      }
      
      public function get movieClip() : MovieClip
      {
         return this.§&&§;
      }
      
      public function get container() : §&F§
      {
         return this.§%C§;
      }
   }
}
