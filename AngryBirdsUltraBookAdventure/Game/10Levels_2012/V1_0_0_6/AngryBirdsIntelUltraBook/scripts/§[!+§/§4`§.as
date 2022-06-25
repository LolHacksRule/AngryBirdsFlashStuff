package §[!+§
{
   import §+0§.§,!E§;
   import §1!E§.§#?§;
   import §1!E§.§&!J§;
   import §1!E§.§31§;
   import §1!E§.§?!x§;
   import §>7§.§&! §;
   import §>7§.§,!c§;
   import §>7§.§4+§;
   import flash.display.Graphics;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §4`§ extends Sprite
   {
       
      
      protected var § t§:§#?§;
      
      protected var §&!v§:MovieClip;
      
      protected var §?<§:§,!E§;
      
      public function §4`§(param1:§,!E§)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            super();
            loop0:
            while(true)
            {
               this.§?<§ = param1;
               loop1:
               while(true)
               {
                  this.§&!v§ = new MovieClip();
                  while(_loc3_)
                  {
                     addChild(this.§&!v§);
                     loop3:
                     while(_loc3_)
                     {
                        continue loop1;
                        do
                        {
                           if(_loc3_ || this)
                           {
                              continue;
                           }
                           continue loop3;
                        }
                        while(this.mouseEnabled = false, !_loc3_);
                        
                        return;
                     }
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr45);
      }
      
      public function init(param1:XML, param2:MovieClip = null) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param2))
         {
            this.§ t§ = new §#?§(param1,null,this,param2);
         }
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§=X§();
         }
         do
         {
            this.§ t§.clear();
            do
            {
               this.§ t§ = null;
            }
            while(!(_loc2_ || this));
            
         }
         while(!(_loc2_ || _loc2_));
         
         while(true)
         {
            if(numChildren <= 0)
            {
               if(!(_loc1_ && _loc2_))
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
         if(_loc2_)
         {
            §§push(this.§ t§);
            if(_loc2_ || this)
            {
               if(§§pop())
               {
                  if(!_loc1_)
                  {
                     addr73:
                     this.§ t§.setActiveStatus(true);
                  }
                  while(true)
                  {
                  }
                  addr75:
               }
               while(true)
               {
                  visible = true;
                  while(!_loc1_)
                  {
                     this.§&!v§.visible = visible;
                     if(_loc2_)
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
      
      public function §]$§(param1:§,!E§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§=X§();
         }
         while(true)
         {
            this.§?<§ = param1;
            while(!(_loc3_ && this))
            {
               this.activateView();
               if(_loc2_)
               {
                  return;
               }
            }
         }
      }
      
      public function §=X§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §§push(this.§ t§);
            if(_loc1_ || this)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§ t§);
                     addr92:
                     while(true)
                     {
                        §§pop().setActiveStatus(false);
                        addr94:
                        while(true)
                        {
                        }
                     }
                     addr50:
                     if(!(_loc1_ || _loc1_))
                     {
                        continue;
                     }
                     return;
                     addr67:
                  }
               }
               while(true)
               {
                  visible = false;
                  while(_loc1_ || this)
                  {
                     this.§&!v§.visible = visible;
                     if(_loc2_ && this)
                     {
                        continue;
                     }
                     §§goto(addr50);
                  }
                  §§goto(addr94);
               }
               §§goto(addr67);
            }
            §§goto(addr92);
         }
         §§goto(addr67);
      }
      
      public function listenerEventOccured(param1:int, param2:String, param3:§,!c§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            this.§?<§.uiInteractionHandler(param1,param2,param3);
         }
      }
      
      public function setItemVisibility(param1:String, param2:Boolean) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param1))
         {
            §§push(this.§ t§);
            if(_loc3_ || _loc3_)
            {
               if(§§pop())
               {
                  if(_loc3_ || _loc3_)
                  {
                     addr52:
                     this.§ t§.§package§(param1,param2);
                  }
               }
               return;
            }
         }
         §§goto(addr52);
      }
      
      public function getItemByName(param1:String) : §&! §
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.§ t§);
            if(!(_loc3_ && this))
            {
               if(§§pop())
               {
                  if(!_loc3_)
                  {
                     §§goto(addr42);
                  }
               }
               return null;
            }
            §§goto(addr42);
         }
         addr42:
         return this.§ t§.getItemByName(param1);
      }
      
      public function setText(param1:String, param2:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc5_)
         {
            if(_loc3_ is §?!x§)
            {
               if(!_loc4_)
               {
                  (_loc3_ as §?!x§).setText(param1);
               }
            }
         }
      }
      
      public function §]H§(param1:String) : String
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Object = this.getItemByName(param1);
         if(!_loc3_)
         {
            if(_loc2_ is §?!x§)
            {
               if(_loc4_)
               {
                  §§goto(addr40);
               }
            }
            return "";
         }
         addr40:
         return (_loc2_ as §?!x§).§]H§();
      }
      
      public function setComponentState(param1:String, param2:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:Object = this.getItemByName(param2);
         if(!_loc4_)
         {
            if(_loc3_ is §4+§)
            {
               if(!(_loc4_ && param2))
               {
                  addr45:
                  (_loc3_ as §4+§).setComponentState(param1);
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
      
      public function §>!]§(param1:String, param2:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§31§ = this.getItemByName(param1) as §31§;
         if(_loc4_ || param2)
         {
            if(_loc3_)
            {
               if(!_loc5_)
               {
                  addr44:
                  _loc3_.§8!R§(param2);
               }
            }
            return;
         }
         §§goto(addr44);
      }
      
      public function §[!?§(param1:String) : String
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§31§ = this.getItemByName(param1) as §31§;
         if(_loc4_ || this)
         {
            if(_loc2_)
            {
               if(!(_loc3_ && this))
               {
                  return _loc2_.§!=§;
               }
            }
         }
         return "";
      }
      
      public function §6!>§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§&!J§ = null;
         for each(_loc1_ in this.§ t§.§6!§)
         {
            if(!_loc5_)
            {
               if(_loc1_)
               {
                  if(_loc4_)
                  {
                     _loc1_.close();
                  }
               }
            }
         }
      }
      
      public function §-k§() : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§&!J§ = null;
         var _loc2_:int = 0;
         var _loc3_:* = this.§ t§.§6!§;
         while(true)
         {
            for each(_loc1_ in _loc3_)
            {
               if(_loc5_)
               {
                  §§push(Boolean(_loc1_));
                  if(!(_loc4_ && _loc3_))
                  {
                     if(§§pop())
                     {
                        if(!_loc4_)
                        {
                           §§pop();
                           if(_loc5_ || _loc2_)
                           {
                              §§push(Boolean(_loc1_.§8!N§));
                              if(_loc5_)
                              {
                                 addr82:
                                 if(!§§pop())
                                 {
                                    continue;
                                 }
                                 if(!_loc5_)
                                 {
                                    continue;
                                 }
                              }
                              break;
                           }
                           §§push(true);
                           break;
                        }
                     }
                     §§goto(addr82);
                  }
                  break;
               }
            }
            return false;
         }
         return §§pop();
      }
      
      public function §,1§(param1:int = 16777215, param2:Number = 0.5) : Sprite
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:Sprite = new Sprite();
         var _loc4_:Graphics;
         (_loc4_ = _loc3_.graphics).beginFill(param1,param2);
         if(_loc6_ || _loc3_)
         {
            _loc4_.drawRect(0,0,this.§?<§.getAppWidth(),this.§?<§.getAppHeight());
         }
         do
         {
            _loc4_.endFill();
         }
         while(_loc5_);
         
         return _loc3_;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.§ t§);
            if(_loc2_)
            {
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     addr27:
                     this.§ t§.viewWidth = param1;
                  }
               }
               return;
            }
         }
         §§goto(addr27);
      }
      
      public function set viewHeight(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            §§push(this.§ t§);
            if(_loc3_ || _loc3_)
            {
               if(!§§pop())
               {
               }
               §§goto(addr55);
            }
            §§pop().viewHeight = param1;
         }
         addr55:
         if(!(_loc2_ && _loc3_))
         {
            §§push(this.§ t§);
         }
      }
      
      public function get §?!O§() : §,!E§
      {
         return this.§?<§;
      }
      
      public function get movieClip() : MovieClip
      {
         return this.§&!v§;
      }
      
      public function get §]1§() : §#?§
      {
         return this.§ t§;
      }
   }
}
