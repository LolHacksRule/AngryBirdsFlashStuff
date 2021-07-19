package §0F§
{
   import §,j§.§'G§;
   import §,j§.§1-§;
   import §,j§.§<U§;
   import §,j§.§[i§;
   import §-H§.§&c§;
   import §1§.§&!3§;
   import §1§.§'n§;
   import §1§.§;d§;
   import flash.display.Graphics;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §'j§ extends Sprite
   {
       
      
      protected var §]!?§:§1-§;
      
      protected var §^B§:MovieClip;
      
      protected var set:§&c§;
      
      public function §'j§(param1:§&c§)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            super();
            loop0:
            while(true)
            {
               this.set = param1;
               while(true)
               {
                  this.§^B§ = new MovieClip();
                  continue loop0;
                  addr61:
                  loop3:
                  while(!(_loc2_ && this))
                  {
                     this.§^B§.mouseEnabled = false;
                     while(_loc3_)
                     {
                        this.mouseEnabled = false;
                        if(!_loc2_)
                        {
                           if(_loc3_)
                           {
                              return;
                              addr37:
                           }
                           continue loop3;
                        }
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr37);
      }
      
      public function init(param1:XML, param2:MovieClip = null) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.§]!?§ = new §1-§(param1,null,this,param2);
         }
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§8!Q§();
         }
         do
         {
            this.§]!?§.clear();
            do
            {
               this.§]!?§ = null;
            }
            while(_loc2_ && this);
            
         }
         while(_loc2_ && _loc2_);
         
         while(true)
         {
            if(numChildren <= 0)
            {
               if(_loc1_ || _loc1_)
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
      
      public function §'a§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            §§push(this.§]!?§);
            if(_loc2_)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§]!?§);
                     addr78:
                     while(true)
                     {
                        §§pop().setActiveStatus(true);
                        addr80:
                        while(true)
                        {
                        }
                     }
                     addr53:
                     if(!(_loc2_ || _loc1_))
                     {
                        continue;
                     }
                     while(true)
                     {
                        this.§^B§.visible = visible;
                        if(_loc2_)
                        {
                           break;
                        }
                        addr51:
                        while(_loc2_)
                        {
                           §§goto(addr53);
                        }
                        §§goto(addr80);
                     }
                     return;
                     addr60:
                  }
               }
               while(true)
               {
                  visible = true;
                  §§goto(addr51);
                  §§goto(addr80);
               }
            }
            §§goto(addr78);
         }
         §§goto(addr60);
      }
      
      public function §"H§(param1:§&c§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§8!Q§();
            do
            {
               this.set = param1;
               do
               {
                  this.§'a§();
               }
               while(!_loc3_);
               
            }
            while(!(_loc3_ || _loc3_));
            
         }
      }
      
      public function §8!Q§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§]!?§);
            if(_loc1_)
            {
               if(§§pop())
               {
                  if(!(_loc2_ && _loc2_))
                  {
                     addr77:
                     this.§]!?§.setActiveStatus(false);
                  }
                  while(true)
                  {
                     §§goto(addr48);
                  }
               }
               addr48:
               §§goto(addr47);
            }
            §§goto(addr77);
         }
         addr47:
         while(true)
         {
            visible = false;
            do
            {
               this.§^B§.visible = visible;
            }
            while(_loc2_ && this);
            
            if(!_loc2_)
            {
               break;
            }
            continue loop0;
         }
      }
      
      public function listenerEventOccured(param1:int, param2:String, param3:§'n§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            this.set.uiInteractionHandler(param1,param2,param3);
         }
      }
      
      public function §%6§(param1:String, param2:Boolean) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param2))
         {
            §§push(this.§]!?§);
            if(_loc4_)
            {
               if(§§pop())
               {
                  if(_loc4_)
                  {
                     addr53:
                     this.§]!?§.§7T§(param1,param2);
                  }
               }
               return;
            }
         }
         §§goto(addr53);
      }
      
      public function getItemByName(param1:String) : §;d§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            §§push(this.§]!?§);
            if(!_loc3_)
            {
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     §§goto(addr52);
                  }
               }
               return null;
            }
            §§goto(addr52);
         }
         addr52:
         return this.§]!?§.getItemByName(param1);
      }
      
      public function setText(param1:String, param2:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc5_ || this)
         {
            if(_loc3_ is §[i§)
            {
               if(_loc5_)
               {
                  (_loc3_ as §[i§).setText(param1);
               }
            }
         }
      }
      
      public function getText(param1:String) : String
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:Object = this.getItemByName(param1);
         if(_loc3_ || _loc2_)
         {
            if(_loc2_ is §[i§)
            {
               if(_loc3_)
               {
                  return (_loc2_ as §[i§).getText();
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
         if(_loc5_)
         {
            if(_loc3_ is §&!3§)
            {
               if(!_loc4_)
               {
                  (_loc3_ as §&!3§).setComponentState(param1);
               }
            }
         }
      }
      
      public function getRepeaterDataXML(param1:String) : Array
      {
         return null;
      }
      
      public function §4y§(param1:String, param2:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§'G§ = this.getItemByName(param1) as §'G§;
         if(!_loc4_)
         {
            if(_loc3_)
            {
               if(_loc5_ || param2)
               {
                  _loc3_.§=s§(param2);
               }
            }
         }
      }
      
      public function §implements§(param1:String) : String
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§'G§ = this.getItemByName(param1) as §'G§;
         if(!_loc4_)
         {
            if(_loc2_)
            {
               if(_loc3_)
               {
                  return _loc2_.§2d§;
               }
            }
         }
         return "";
      }
      
      public function §'§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§<U§ = null;
         for each(_loc1_ in this.§]!?§.§%o§)
         {
            if(!_loc4_)
            {
               if(_loc1_)
               {
                  if(!_loc4_)
                  {
                     _loc1_.close();
                  }
               }
            }
         }
      }
      
      public function §^h§() : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§<U§ = null;
         var _loc2_:int = 0;
         var _loc3_:* = this.§]!?§.§%o§;
         while(true)
         {
            for each(_loc1_ in _loc3_)
            {
               if(_loc5_ && _loc1_)
               {
                  continue;
               }
               §§push(Boolean(_loc1_));
               if(_loc4_)
               {
                  if(§§pop())
                  {
                     if(_loc5_ && _loc1_)
                     {
                        break;
                     }
                     addr63:
                     §§pop();
                     if(!_loc5_)
                     {
                        §§push(Boolean(_loc1_.§4Z§));
                        if(!_loc4_)
                        {
                           break;
                        }
                        addr71:
                        if(§§pop())
                        {
                           if(!_loc5_)
                           {
                              §§push(true);
                              break;
                           }
                        }
                     }
                     continue;
                  }
                  §§goto(addr71);
               }
               §§goto(addr63);
            }
            return false;
         }
         return §§pop();
      }
      
      public function §?#§(param1:int = 16777215, param2:Number = 0.5) : Sprite
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:Sprite = new Sprite();
         var _loc4_:Graphics;
         (_loc4_ = _loc3_.graphics).beginFill(param1,param2);
         if(_loc5_ || this)
         {
            _loc4_.drawRect(0,0,this.set.getAppWidth(),this.set.getAppHeight());
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
         if(_loc3_ || _loc3_)
         {
            §§push(this.§]!?§);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  if(_loc3_ || _loc2_)
                  {
                     addr58:
                     this.§]!?§.viewWidth = param1;
                  }
               }
               return;
            }
         }
         §§goto(addr58);
      }
      
      public function set viewHeight(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            §§push(this.§]!?§);
            if(_loc3_)
            {
               if(§§pop())
               {
                  if(_loc3_ || param1)
                  {
                     addr58:
                     this.§]!?§.viewHeight = param1;
                  }
               }
               return;
            }
         }
         §§goto(addr58);
      }
      
      public function get §?!9§() : §&c§
      {
         return this.set;
      }
      
      public function get movieClip() : MovieClip
      {
         return this.§^B§;
      }
      
      public function get container() : §1-§
      {
         return this.§]!?§;
      }
   }
}
