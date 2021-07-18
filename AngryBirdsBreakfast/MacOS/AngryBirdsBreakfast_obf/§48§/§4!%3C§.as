package §48§
{
   import §;0§.§6h§;
   import §?""§.§6!A§;
   import flash.display.MovieClip;
   import flash.events.EventDispatcher;
   import flash.geom.Rectangle;
   
   public class §4!<§ extends EventDispatcher implements §2`§
   {
       
      
      protected var §<N§:Rectangle;
      
      protected var §+q§:Number;
      
      protected var §;>§:Number;
      
      protected var §7!`§:int;
      
      protected var §?y§:Boolean;
      
      protected var §,!&§:Boolean;
      
      protected var §=!B§:Vector.<§5!c§>;
      
      protected var §,!P§:§5!c§;
      
      protected var §-!]§:§6h§;
      
      protected var §6!c§:§6!A§;
      
      protected var §@'§:MovieClip;
      
      public function §4!<§(param1:int, param2:MovieClip, param3:§6h§, param4:§6!A§, param5:Boolean = true, param6:Rectangle = null, param7:Boolean = false)
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(!_loc9_)
         {
            super();
            while(true)
            {
               this.§-!]§ = param3;
               loop1:
               while(true)
               {
                  this.§6!c§ = param4;
                  addr125:
                  while(true)
                  {
                     this.§=!B§ = new Vector.<§5!c§>();
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr36);
      }
      
      public function set §0""§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§,!&§ = param1;
         }
      }
      
      public function get §0""§() : Boolean
      {
         return this.§,!&§;
      }
      
      public function set §%b§(param1:Rectangle) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§<N§ = param1;
         }
      }
      
      public function get §%b§() : Rectangle
      {
         return this.§<N§;
      }
      
      public function get index() : int
      {
         return this.§7!`§;
      }
      
      public function get data() : §5!c§
      {
         return this.§,!P§;
      }
      
      public function set isPersistentLayer(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§?y§ = param1;
         }
      }
      
      public function get isPersistentLayer() : Boolean
      {
         return this.§?y§;
      }
      
      protected function §1Q§(param1:MovieClip) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§@'§ = param1.addChild(new MovieClip()) as MovieClip;
            do
            {
               this.§;!y§();
            }
            while(_loc2_ && _loc2_);
            
         }
      }
      
      public function §;!y§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(this.index);
         if(_loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         if(_loc3_)
         {
            §§push(_loc1_);
            if(!(_loc2_ && _loc1_))
            {
               if(§§pop() >= this.§@'§.parent.numChildren)
               {
                  if(!_loc2_)
                  {
                     addr87:
                     _loc1_ = int(this.§@'§.parent.numChildren - 1);
                  }
                  while(true)
                  {
                     §§goto(addr30);
                  }
               }
               addr30:
               while(true)
               {
                  this.§@'§.parent.setChildIndex(this.§@'§,_loc1_);
                  if(_loc3_ || _loc1_)
                  {
                     break;
                  }
                  continue loop0;
               }
               return;
            }
         }
         §§goto(addr87);
      }
      
      public function setViewSize(param1:int, param2:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && this))
         {
            this.§+q§ = param1;
            loop0:
            while(true)
            {
               this.§;>§ = param2;
               do
               {
                  §§push(this.§,!P§);
                  if(!(_loc4_ && _loc3_))
                  {
                     if(!§§pop())
                     {
                        §§goto(addr24);
                     }
                     if(_loc4_ && param2)
                     {
                        continue;
                     }
                     if(_loc4_)
                     {
                        continue loop0;
                     }
                     §§push(this.§,!P§);
                  }
                  §§pop().popup.setViewSize(this.§+q§ + this.§<N§.width,this.§;>§ + this.§<N§.height);
               }
               while(!_loc3_);
               
            }
         }
         addr24:
      }
      
      public function openPopup(param1:§5!c§, param2:Boolean = false) : void
      {
         throw "--#AbstractPopupLayer[openPopup]:: must be implemented";
      }
      
      public function closePopup(param1:Boolean = false, param2:Boolean = true) : void
      {
         throw "--#AbstractPopupLayer[openPopup]:: must be implemented";
      }
      
      public function §9§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            if(this.§=!B§)
            {
               if(!_loc2_)
               {
                  addr48:
                  this.§=!B§ = new Vector.<§5!c§>();
               }
            }
            return;
         }
         §§goto(addr48);
      }
      
      public function §%&§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§?y§);
            if(!(_loc2_ && _loc2_))
            {
               if(§§pop())
               {
                  if(_loc1_)
                  {
                     addr40:
                     §§push(false);
                     if(_loc1_)
                     {
                        return §§pop();
                     }
                     addr65:
                     return !§§pop();
                  }
                  else
                  {
                     addr44:
                     §§push(this.§,!P§ == null);
                     if(!(_loc2_ && this))
                     {
                        §§goto(addr65);
                     }
                  }
                  return §§pop();
               }
               §§goto(addr44);
            }
            §§goto(addr65);
         }
         §§goto(addr40);
      }
      
      public function isPopupOpenById(param1:String) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.§?y§);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  while(true)
                  {
                     §§push(this.§,!P§);
                     addr92:
                     while(true)
                     {
                        §§push(Boolean(§§pop()));
                        continue loop0;
                     }
                  }
                  addr89:
               }
            }
         }
         §§goto(addr124);
      }
      
      public function §^0§(param1:String) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§5!c§ = null;
         for each(_loc2_ in this.§=!B§)
         {
            if(!_loc5_)
            {
               if(_loc2_.popup.id == param1)
               {
                  if(_loc6_)
                  {
                     return true;
                  }
               }
            }
         }
         return false;
      }
      
      public function §0z§(param1:String) : §["#§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            §§push(this.§,!P§);
            do
            {
               §§push(Boolean(§§pop()));
               if(_loc3_ || this)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        §§goto(addr99);
                     }
                     addr98:
                  }
                  while(true)
                  {
                     if(§§pop())
                     {
                        if(_loc3_)
                        {
                           §§push(this.§,!P§);
                           break;
                        }
                        if(!_loc3_)
                        {
                           addr99:
                           §§goto(addr72);
                        }
                        else
                        {
                           addr75:
                        }
                     }
                     return null;
                  }
                  continue;
               }
               §§goto(addr98);
            }
            while(_loc2_ && _loc3_);
            
            addr72:
            while(true)
            {
               §§push(this.§,!P§);
               if(!_loc3_)
               {
                  continue loop0;
               }
               §§push(§§pop().popup);
               if(!(_loc3_ || this))
               {
                  break;
               }
               §§push(§§pop().id == param1);
               if(!_loc2_)
               {
               }
               continue loop3;
            }
            return §§pop();
            §§push(§§pop().popup);
         }
         §§goto(addr75);
      }
      
      public function isTransitioning() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §§push(this.§,!P§);
            if(_loc1_ || _loc1_)
            {
               if(§§pop())
               {
                  if(!_loc2_)
                  {
                     addr57:
                     §§push(this.§,!P§.popup.isTransitioning);
                     if(!_loc2_)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr62:
                     return false;
                  }
                  return §§pop();
               }
               §§goto(addr62);
            }
         }
         §§goto(addr57);
      }
      
      public function get container() : MovieClip
      {
         return this.§@'§;
      }
   }
}
