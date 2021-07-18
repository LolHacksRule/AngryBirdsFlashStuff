package §%#W§
{
   import §+D§.§0"$§;
   import §]!$§.§6y§;
   import §]!$§.§>!!§;
   import §]!$§.§`#?§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class §["m§ extends EventDispatcher
   {
      
      private static const §2"=§:String = "MovieClip_";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && §["m§))
         {
            §2"=§ = "MovieClip_";
         }
      }
      
      protected var §^!`§:String = "best";
      
      protected var §7!=§:§>!!§;
      
      protected var §^c§:§0"$§;
      
      public function §["m§(param1:§0"$§)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            super();
            while(true)
            {
               this.§^c§ = param1;
               §§goto(addr66);
            }
         }
         addr66:
         while(true)
         {
            this.init();
            if(_loc3_)
            {
               if(!(_loc2_ && this))
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      protected function init() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:MovieClip = null;
         var _loc2_:int = 0;
         loop0:
         while(_loc2_ < this.§^c§.mClip.numChildren)
         {
            _loc1_ = MovieClip(this.§^c§.mClip.getChildAt(_loc2_));
            if(_loc3_ || _loc2_)
            {
               _loc1_.gotoAndStop(1);
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     _loc1_.visible = false;
                     do
                     {
                        _loc2_++;
                     }
                     while(_loc4_);
                     
                     if(!(_loc3_ || this))
                     {
                        break;
                        addr61:
                     }
                     while(false)
                     {
                        continue loop2;
                     }
                     continue loop0;
                  }
               }
            }
            §§goto(addr61);
         }
         if(!_loc4_)
         {
            this.§^c§.mClip.visible = true;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§^!d§();
         }
      }
      
      protected function createTransition(param1:String) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            this.§^!d§();
         }
         §§push(§2"=§);
         if(_loc5_)
         {
            §§push(§§pop() + param1);
         }
         var _loc2_:* = §§pop();
         var _loc3_:MovieClip = MovieClip(this.§^c§.mClip.getChildByName(_loc2_));
         var _loc4_:Vector.<MovieClip>;
         if((_loc4_ = new <MovieClip>[_loc3_]).length == 0)
         {
            if(_loc5_ || this)
            {
               throw new Error("--#IntroPlayer[createTransition]:: No animations found!");
            }
            loop0:
            while(true)
            {
               §§push(this.§7!=§);
               if(!(_loc6_ && _loc3_))
               {
                  §§pop().start(this.§2>§());
                  if(!(_loc6_ && this))
                  {
                     break;
                  }
                  continue;
               }
               addr109:
               while(true)
               {
                  §§pop().addEventListener(Event.COMPLETE,this.§]!p§);
                  continue loop0;
               }
            }
            return;
         }
         this.§7!=§ = new §"!z§(_loc4_,this.§^c§.mClip.stage,1000 / 60);
         while(true)
         {
            §§goto(addr109);
         }
      }
      
      private function §^!d§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            §§push(this.§7!=§);
            if(_loc2_ || _loc1_)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§7!=§);
                     addr89:
                     loop3:
                     while(true)
                     {
                        §§pop().removeEventListener(Event.COMPLETE,this.§]!p§);
                        addr94:
                        while(true)
                        {
                           §§push(this.§7!=§);
                           if(!_loc1_)
                           {
                              break;
                           }
                           continue loop3;
                        }
                        addr66:
                        §§pop().dispose();
                        while(true)
                        {
                        }
                     }
                  }
                  addr87:
               }
               while(true)
               {
                  this.§7!=§ = null;
                  if(!(_loc2_ || _loc1_))
                  {
                     continue;
                  }
                  if(!(_loc1_ && _loc1_))
                  {
                     if(!_loc1_)
                     {
                        break;
                     }
                     §§goto(addr87);
                  }
                  §§goto(addr94);
               }
               return;
            }
            §§goto(addr89);
         }
         §§goto(addr66);
      }
      
      protected function §2>§() : §6y§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§6y§ = new §6y§();
         if(_loc2_)
         {
            _loc1_.§%#N§ = §`#?§.§1#$§;
            loop0:
            while(true)
            {
               _loc1_.§`"i§ = §`#?§.§;!&§;
               while(true)
               {
                  _loc1_.startLabel = §`#?§.§@!!§();
                  addr55:
                  if(_loc2_ || _loc2_)
                  {
                     _loc1_.stageQuality = this.§^!`§;
                     addr62:
                     if(!_loc3_)
                     {
                        continue loop0;
                     }
                     loop3:
                     while(true)
                     {
                        if(!_loc2_)
                        {
                           while(true)
                           {
                              _loc1_.type = §6y§.§>]§;
                              continue loop3;
                           }
                           return _loc1_;
                           addr47:
                           addr68:
                        }
                        §§goto(addr55);
                     }
                  }
               }
            }
         }
         §§goto(addr68);
      }
      
      private function §]!p§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§^!d§();
         }
         do
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
         while(!(_loc3_ || param1));
         
      }
      
      public function §]"m§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.createTransition(param1);
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            §§push(this.§7!=§);
            if(_loc2_ || param1)
            {
               if(§§pop())
               {
                  if(_loc2_ || this)
                  {
                     addr62:
                     this.§7!=§.run(param1);
                  }
               }
               return;
            }
         }
         §§goto(addr62);
      }
   }
}
