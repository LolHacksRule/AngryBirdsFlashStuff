package §>f§
{
   import §2y§.§54§;
   import §2y§.§<N§;
   import §2y§.§=!o§;
   import §2y§.§^! §;
   import §8!H§.§9![§;
   import §@!&§.§'!o§;
   import §@!&§.§-0§;
   import §@!&§.§7!>§;
   import flash.display.Graphics;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §&!G§ extends Sprite
   {
       
      
      protected var §>0§:§^! §;
      
      protected var §&!m§:MovieClip;
      
      protected var §<!§:§9![§;
      
      public function §&!G§(param1:§9![§)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            super();
            loop0:
            while(true)
            {
               this.§<!§ = param1;
               while(true)
               {
                  this.§&!m§ = new MovieClip();
                  loop2:
                  while(!(_loc2_ && _loc2_))
                  {
                     addChild(this.§&!m§);
                     loop3:
                     while(_loc3_)
                     {
                        this.§&!m§.mouseEnabled = false;
                        loop4:
                        while(!_loc2_)
                        {
                           while(true)
                           {
                              this.mouseEnabled = false;
                              if(_loc3_)
                              {
                                 if(_loc2_ && this)
                                 {
                                    continue loop3;
                                 }
                                 §§goto(addr52);
                                 continue loop3;
                              }
                              continue loop4;
                           }
                           return;
                        }
                        continue loop2;
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr70);
      }
      
      public function init(param1:XML, param2:MovieClip = null) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param1)
         {
            this.§>0§ = new §^! §(param1,null,this,param2);
         }
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§^!M§();
            while(true)
            {
               this.§>0§.clear();
               §§goto(addr78);
            }
         }
         addr78:
         while(true)
         {
            this.§>0§ = null;
            if(!(_loc2_ && this))
            {
               if(!(_loc2_ && this))
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
               if(_loc1_)
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
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§>0§);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  if(!_loc2_)
                  {
                     addr77:
                     this.§>0§.setActiveStatus(true);
                  }
                  while(true)
                  {
                     §§goto(addr63);
                  }
               }
               addr63:
               while(true)
               {
                  visible = true;
                  do
                  {
                     this.§&!m§.visible = visible;
                  }
                  while(!(_loc1_ || _loc1_));
                  
                  if(_loc1_ || _loc1_)
                  {
                     break;
                  }
                  continue loop0;
               }
               return;
            }
         }
         §§goto(addr77);
      }
      
      public function §3`§(param1:§9![§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§^!M§();
            while(true)
            {
               this.§<!§ = param1;
               loop1:
               while(!_loc3_)
               {
                  while(true)
                  {
                     this.activateView();
                     if(_loc2_ || this)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr55);
      }
      
      public function §^!M§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §§push(this.§>0§);
            if(_loc1_ || this)
            {
               if(§§pop())
               {
                  if(!(_loc2_ && _loc1_))
                  {
                     addr87:
                     this.§>0§.setActiveStatus(false);
                  }
                  while(true)
                  {
                  }
                  addr89:
               }
               while(true)
               {
                  visible = false;
                  while(!_loc2_)
                  {
                     this.§&!m§.visible = visible;
                     if(!(_loc2_ && this))
                     {
                        return;
                        addr60:
                     }
                  }
                  §§goto(addr89);
               }
            }
            §§goto(addr87);
         }
         §§goto(addr60);
      }
      
      public function listenerEventOccured(param1:int, param2:String, param3:§'!o§) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param3))
         {
            this.§<!§.uiInteractionHandler(param1,param2,param3);
         }
      }
      
      public function setItemVisibility(param1:String, param2:Boolean) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
         {
            §§push(this.§>0§);
            if(_loc4_ || param2)
            {
               if(§§pop())
               {
                  if(_loc4_ || _loc3_)
                  {
                     addr53:
                     this.§>0§.§'!W§(param1,param2);
                  }
               }
               return;
            }
         }
         §§goto(addr53);
      }
      
      public function getItemByName(param1:String) : §7!>§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.§>0§);
            if(!_loc3_)
            {
               if(§§pop())
               {
                  if(!(_loc3_ && this))
                  {
                     §§goto(addr42);
                  }
               }
               return null;
            }
            §§goto(addr42);
         }
         addr42:
         return this.§>0§.getItemByName(param1);
      }
      
      public function setText(param1:String, param2:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:Object = this.getItemByName(param2);
         if(!_loc4_)
         {
            if(_loc3_ is §54§)
            {
               if(_loc5_)
               {
                  (_loc3_ as §54§).setText(param1);
               }
            }
         }
      }
      
      public function §5Q§(param1:String) : String
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:Object = this.getItemByName(param1);
         if(!(_loc4_ && param1))
         {
            if(_loc2_ is §54§)
            {
               if(!(_loc4_ && _loc2_))
               {
                  §§goto(addr49);
               }
            }
            return "";
         }
         addr49:
         return (_loc2_ as §54§).§5Q§();
      }
      
      public function setComponentState(param1:String, param2:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc4_ || param2)
         {
            if(_loc3_ is §-0§)
            {
               if(!_loc5_)
               {
                  (_loc3_ as §-0§).setComponentState(param1);
               }
            }
         }
      }
      
      public function getRepeaterDataXML(param1:String) : Array
      {
         return null;
      }
      
      public function §?!]§(param1:String, param2:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§<N§ = this.getItemByName(param1) as §<N§;
         if(!_loc4_)
         {
            if(_loc3_)
            {
               if(_loc5_ || param1)
               {
                  addr45:
                  _loc3_.§-U§(param2);
               }
            }
            return;
         }
         §§goto(addr45);
      }
      
      public function §]!8§(param1:String) : String
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§<N§ = this.getItemByName(param1) as §<N§;
         if(_loc3_ || _loc3_)
         {
            if(_loc2_)
            {
               if(_loc3_ || _loc2_)
               {
                  §§goto(addr49);
               }
            }
            return "";
         }
         addr49:
         return _loc2_.§]E§;
      }
      
      public function §>!>§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§=!o§ = null;
         for each(_loc1_ in this.§>0§.§&O§)
         {
            if(!_loc4_)
            {
               if(!_loc1_)
               {
                  continue;
               }
               if(!_loc5_)
               {
                  continue;
               }
            }
            _loc1_.close();
         }
      }
      
      public function §4f§() : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§=!o§ = null;
         var _loc2_:int = 0;
         var _loc3_:* = this.§>0§.§&O§;
         while(true)
         {
            for each(_loc1_ in _loc3_)
            {
               if(_loc4_)
               {
                  §§push(Boolean(_loc1_));
                  if(_loc5_ && _loc3_)
                  {
                     break;
                  }
                  if(§§pop())
                  {
                     if(!_loc5_)
                     {
                        §§pop();
                        if(!(_loc5_ && _loc2_))
                        {
                           addr76:
                           §§push(Boolean(_loc1_.§0a§));
                           if(_loc4_ || this)
                           {
                           }
                           break;
                        }
                        continue;
                     }
                  }
                  if(§§pop())
                  {
                     if(_loc4_)
                     {
                        §§push(true);
                        break;
                     }
                  }
                  continue;
               }
               §§goto(addr76);
            }
            return false;
         }
         return §§pop();
      }
      
      public function §!!s§(param1:int = 16777215, param2:Number = 0.5) : Sprite
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:Sprite = new Sprite();
         var _loc4_:Graphics;
         (_loc4_ = _loc3_.graphics).beginFill(param1,param2);
         if(_loc5_ || this)
         {
            _loc4_.drawRect(0,0,this.§<!§.getAppWidth(),this.§<!§.getAppHeight());
            do
            {
               _loc4_.endFill();
            }
            while(!(_loc5_ || param1));
            
         }
         return _loc3_;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            §§push(this.§>0§);
            if(_loc3_)
            {
               if(§§pop())
               {
                  if(_loc3_ || _loc3_)
                  {
                     addr48:
                     this.§>0§.viewWidth = param1;
                  }
               }
               return;
            }
         }
         §§goto(addr48);
      }
      
      public function set viewHeight(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.§>0§);
            if(_loc2_ || this)
            {
               if(!§§pop())
               {
               }
               §§goto(addr44);
            }
            §§pop().viewHeight = param1;
         }
         addr44:
         if(!_loc3_)
         {
            §§push(this.§>0§);
         }
      }
      
      public function get §9]§() : §9![§
      {
         return this.§<!§;
      }
      
      public function get movieClip() : MovieClip
      {
         return this.§&!m§;
      }
      
      public function get §^!W§() : §^! §
      {
         return this.§>0§;
      }
   }
}
