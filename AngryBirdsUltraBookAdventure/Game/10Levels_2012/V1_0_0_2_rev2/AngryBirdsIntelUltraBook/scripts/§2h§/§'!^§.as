package §2h§
{
   import §9Y§.§+!!§;
   import §9Y§.§6!8§;
   import §9Y§.§9j§;
   import §<!>§.§?Y§;
   import §?!7§.§"j§;
   import §?!7§.§8;§;
   import §?!7§.§?!x§;
   import §?!7§.§[![§;
   import flash.display.Graphics;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §'!^§ extends Sprite
   {
       
      
      protected var §'Q§:§8;§;
      
      protected var §=!u§:MovieClip;
      
      protected var §,!+§:§?Y§;
      
      public function §'!^§(param1:§?Y§)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            super();
            while(true)
            {
               this.§,!+§ = param1;
               addr49:
               if(_loc3_ || param1)
               {
                  return;
               }
            }
         }
         loop1:
         while(true)
         {
            this.§=!u§ = new MovieClip();
            while(true)
            {
               addChild(this.§=!u§);
               loop3:
               while(true)
               {
                  this.§=!u§.mouseEnabled = false;
                  while(!_loc2_)
                  {
                     this.mouseEnabled = false;
                     if(!_loc2_)
                     {
                        continue loop3;
                     }
                  }
                  continue loop1;
               }
            }
         }
      }
      
      public function init(param1:XML, param2:MovieClip = null) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            this.§'Q§ = new §8;§(param1,null,this,param2);
         }
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§3a§();
            while(true)
            {
               this.§'Q§.clear();
               while(_loc2_ || this)
               {
                  this.§'Q§ = null;
                  if(!_loc2_)
                  {
                     continue;
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
                  return;
                  addr67:
               }
            }
         }
         §§goto(addr67);
      }
      
      public function activateView() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§'Q§);
            if(_loc1_)
            {
               if(§§pop())
               {
                  if(_loc1_ || _loc1_)
                  {
                     addr77:
                     this.§'Q§.setActiveStatus(true);
                     addr79:
                     while(true)
                     {
                     }
                     addr79:
                  }
                  §§goto(addr79);
               }
               while(true)
               {
                  visible = true;
                  while(_loc1_)
                  {
                     this.§=!u§.visible = visible;
                     if(!(_loc2_ && _loc1_))
                     {
                        return;
                     }
                  }
                  §§goto(addr79);
               }
            }
         }
         §§goto(addr77);
      }
      
      public function §!!d§(param1:§?Y§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§3a§();
            while(true)
            {
               this.§,!+§ = param1;
               loop1:
               while(!(_loc2_ && _loc3_))
               {
                  while(true)
                  {
                     this.activateView();
                     if(_loc3_ || param1)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr71);
      }
      
      public function §3a§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§'Q§);
            if(!(_loc1_ && _loc2_))
            {
               if(§§pop())
               {
                  if(!_loc1_)
                  {
                     addr73:
                     this.§'Q§.setActiveStatus(false);
                  }
                  while(true)
                  {
                  }
                  addr75:
               }
               while(true)
               {
                  visible = false;
                  while(_loc2_)
                  {
                     this.§=!u§.visible = visible;
                     if(!_loc1_)
                     {
                        return;
                     }
                  }
                  §§goto(addr75);
               }
            }
         }
         §§goto(addr73);
      }
      
      public function listenerEventOccured(param1:int, param2:String, param3:§6!8§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            this.§,!+§.uiInteractionHandler(param1,param2,param3);
         }
      }
      
      public function setItemVisibility(param1:String, param2:Boolean) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §§push(this.§'Q§);
            if(!(_loc4_ && _loc3_))
            {
               if(§§pop())
               {
                  if(!_loc4_)
                  {
                     addr42:
                     this.§'Q§.§for§(param1,param2);
                  }
               }
               return;
            }
         }
         §§goto(addr42);
      }
      
      public function getItemByName(param1:String) : §9j§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.§'Q§);
            if(!(_loc2_ && _loc3_))
            {
               if(§§pop())
               {
                  if(_loc3_ || _loc3_)
                  {
                     §§goto(addr48);
                  }
               }
               return null;
            }
            §§goto(addr48);
         }
         addr48:
         return this.§'Q§.getItemByName(param1);
      }
      
      public function setText(param1:String, param2:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc4_ || this)
         {
            if(_loc3_ is §"j§)
            {
               if(_loc4_)
               {
                  addr44:
                  (_loc3_ as §"j§).setText(param1);
               }
            }
            return;
         }
         §§goto(addr44);
      }
      
      public function §%!o§(param1:String) : String
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:Object = this.getItemByName(param1);
         if(_loc3_)
         {
            if(_loc2_ is §"j§)
            {
               if(_loc3_)
               {
                  §§goto(addr39);
               }
            }
            return "";
         }
         addr39:
         return (_loc2_ as §"j§).§%!o§();
      }
      
      public function setComponentState(param1:String, param2:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:Object = this.getItemByName(param2);
         if(!_loc5_)
         {
            if(_loc3_ is §+!!§)
            {
               if(!(_loc5_ && param1))
               {
                  addr44:
                  (_loc3_ as §+!!§).setComponentState(param1);
               }
            }
            return;
         }
         §§goto(addr44);
      }
      
      public function getRepeaterDataXML(param1:String) : Array
      {
         return null;
      }
      
      public function §;!!§(param1:String, param2:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§?!x§ = this.getItemByName(param1) as §?!x§;
         if(_loc4_)
         {
            if(_loc3_)
            {
               if(!(_loc5_ && this))
               {
                  _loc3_.§'!g§(param2);
               }
            }
         }
      }
      
      public function §4r§(param1:String) : String
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§?!x§ = this.getItemByName(param1) as §?!x§;
         if(_loc4_)
         {
            if(_loc2_)
            {
               if(_loc4_ || param1)
               {
                  §§goto(addr45);
               }
            }
            return "";
         }
         addr45:
         return _loc2_.§5!i§;
      }
      
      public function §&I§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§[![§ = null;
         var _loc3_:* = this.§'Q§.§>!!§;
         for each(_loc1_ in _loc3_)
         {
            if(_loc5_ || _loc3_)
            {
               if(_loc1_)
               {
                  if(_loc5_)
                  {
                     _loc1_.close();
                  }
               }
            }
         }
      }
      
      public function §?a§() : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§[![§ = null;
         var _loc2_:int = 0;
         var _loc3_:* = this.§'Q§.§>!!§;
         while(true)
         {
            for each(_loc1_ in _loc3_)
            {
               if(!(_loc5_ && _loc3_))
               {
                  §§push(Boolean(_loc1_));
                  if(_loc5_)
                  {
                     break;
                  }
                  if(§§pop())
                  {
                     if(_loc4_ || _loc1_)
                     {
                        §§pop();
                        if(!_loc5_)
                        {
                           §§push(Boolean(_loc1_.§&!g§));
                           if(_loc4_ || _loc1_)
                           {
                           }
                           break;
                        }
                        continue;
                     }
                  }
                  if(§§pop())
                  {
                     if(_loc4_ || this)
                     {
                        §§push(true);
                        break;
                     }
                  }
               }
            }
            return false;
         }
         return §§pop();
      }
      
      public function §"!#§(param1:int = 16777215, param2:Number = 0.5) : Sprite
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:Sprite = new Sprite();
         var _loc4_:Graphics;
         (_loc4_ = _loc3_.graphics).beginFill(param1,param2);
         if(!(_loc5_ && param1))
         {
            _loc4_.drawRect(0,0,this.§,!+§.getAppWidth(),this.§,!+§.getAppHeight());
         }
         do
         {
            _loc4_.endFill();
         }
         while(!_loc6_);
         
         return _loc3_;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            §§push(this.§'Q§);
            if(_loc2_)
            {
               if(§§pop())
               {
                  if(_loc2_ || this)
                  {
                     addr47:
                     this.§'Q§.viewWidth = param1;
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
         if(!_loc2_)
         {
            §§push(this.§'Q§);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  if(_loc3_)
                  {
                     addr28:
                     this.§'Q§.viewHeight = param1;
                  }
               }
               return;
            }
         }
         §§goto(addr28);
      }
      
      public function get §;!m§() : §?Y§
      {
         return this.§,!+§;
      }
      
      public function get movieClip() : MovieClip
      {
         return this.§=!u§;
      }
      
      public function get §;H§() : §8;§
      {
         return this.§'Q§;
      }
   }
}
