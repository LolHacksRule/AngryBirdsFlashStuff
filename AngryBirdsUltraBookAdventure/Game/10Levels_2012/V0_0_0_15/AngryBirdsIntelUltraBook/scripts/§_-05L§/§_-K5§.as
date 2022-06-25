package §_-05L§
{
   import §_-01E§.§_-00n§;
   import §_-01E§.§_-5b§;
   import §_-01E§.§_-5z§;
   import §_-01E§.§_-M3§;
   import §_-0BH§.§_-FK§;
   import §_-AZ§.§_-07C§;
   import flash.display.Loader;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   
   public class §_-K5§ extends §_-p§
   {
      
      public static var §_-EE§:String;
      
      public static var §_-dT§:Boolean = false;
      
      public static var §_-PT§:Dictionary;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §_-dT§ = false;
            do
            {
               §_-PT§ = new Dictionary();
            }
            while(_loc1_);
            
         }
      }
      
      private var §_-l2§:Loader;
      
      private var §_-eg§:§_-Po§;
      
      public function §_-K5§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            super();
            do
            {
               this.init();
            }
            while(!(_loc1_ || _loc1_));
            
         }
      }
      
      private function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            addEventListener(MouseEvent.CLICK,this.§_-B5§);
         }
      }
      
      private function §_-co§(param1:Class) : §_-Po§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && this))
         {
            if(!§_-PT§[param1])
            {
               if(_loc3_)
               {
                  §_-PT§[param1] = [];
               }
            }
         }
         var _loc2_:Array = §_-PT§[param1];
         if(!_loc4_)
         {
            if(_loc2_.length == 0)
            {
               if(!_loc4_)
               {
                  §§goto(addr66);
               }
            }
            return _loc2_.pop();
         }
         addr66:
         return new param1();
      }
      
      private function §_-03P§(param1:§_-Po§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:Class = Object(this.§_-eg§).constructor;
         if(_loc3_)
         {
            if(!§_-PT§[_loc2_])
            {
               while(true)
               {
                  §_-PT§[_loc2_] = [];
                  addr59:
                  while(true)
                  {
                  }
               }
               addr55:
            }
            while(true)
            {
               §_-PT§[_loc2_].push(param1);
               if(!_loc3_)
               {
                  continue;
               }
               if(!_loc4_)
               {
                  break;
               }
               §§goto(addr55);
            }
         }
      }
      
      private function §_-yJ§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:Class = null;
         var _loc3_:* = Object(this.§_-bF§).constructor;
         if(_loc4_ || _loc3_)
         {
            if(§_-5b§ === _loc3_)
            {
               if(_loc4_)
               {
                  addr62:
                  §§push(0);
                  if(_loc5_ && _loc1_)
                  {
                     addr101:
                  }
               }
               else
               {
                  addr98:
                  §§push(2);
                  if(!_loc5_)
                  {
                     §§goto(addr101);
                  }
               }
            }
            else if(§_-5z§ === _loc3_)
            {
               if(_loc4_)
               {
                  §§push(1);
                  if(_loc4_ || _loc2_)
                  {
                  }
               }
               else
               {
                  §§goto(addr98);
               }
            }
            else if(§_-00n§ === _loc3_)
            {
               §§goto(addr98);
            }
            else
            {
               §§push(3);
            }
            switch(§§pop())
            {
               case 0:
                  _loc1_ = §_-os§;
                  if(_loc4_ || _loc1_)
                  {
                     break;
                  }
                  §§goto(addr122);
               case 1:
                  _loc1_ = §_-uk§;
                  break;
               case 2:
                  _loc1_ = §_-TN§;
            }
            if(!_loc1_)
            {
               if(!_loc5_)
               {
                  §_-FK§.log("WARNING! Unknown score item found!");
                  if(_loc5_ && _loc2_)
                  {
                     addr137:
                     var _loc2_:Class = Object(this.§_-eg§).constructor;
                     §§goto(addr128);
                  }
               }
               addr122:
               return;
            }
            if(this.§_-eg§)
            {
               addr128:
               if(_loc4_ || _loc3_)
               {
                  if(_loc1_ != _loc2_)
                  {
                     if(_loc4_)
                     {
                        §§push(this.§_-eg§);
                        while(true)
                        {
                           if(§§pop())
                           {
                              if(_loc4_)
                              {
                                 this.§_-03P§(removeChild(this.§_-eg§) as §_-Po§);
                                 addr208:
                                 while(true)
                                 {
                                 }
                                 addr208:
                              }
                              §§goto(addr208);
                           }
                           while(true)
                           {
                              this.§_-eg§ = addChild(this.§_-co§(_loc1_)) as §_-Po§;
                              while(true)
                              {
                                 §§goto(addr151);
                              }
                           }
                        }
                     }
                     §§goto(addr208);
                  }
                  addr151:
                  §§goto(addr168);
               }
               addr168:
               do
               {
                  §§push(this.§_-eg§);
                  if(!_loc4_)
                  {
                     continue loop0;
                  }
                  §§pop().data = this.§_-bF§;
                  if(_loc5_)
                  {
                     continue;
                  }
               }
               while(!(_loc4_ || _loc3_));
               
               return;
            }
            §§push(null);
            §§goto(addr137);
            §§goto(addr137);
         }
         §§goto(addr62);
      }
      
      private function §_-B5§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            §§push(this.§_-bF§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               if(!(_loc3_ && param1))
               {
                  if(!§§pop())
                  {
                     loop1:
                     while(true)
                     {
                        if(§§pop())
                        {
                           if(!(_loc3_ && _loc2_))
                           {
                              while(true)
                              {
                                 §_-E4§.scrollerSprite.dispatchEvent(new §_-07C§(§_-07C§.§_-S1§,data as §_-M3§));
                              }
                              addr61:
                           }
                           while(true)
                           {
                              if(_loc2_ || _loc3_)
                              {
                                 break loop1;
                              }
                              continue loop0;
                           }
                        }
                        §§push(§§pop() is §_-5z§);
                        addr33:
                        break;
                        if(!(_loc3_ && this))
                        {
                           continue;
                        }
                        addr101:
                        while(true)
                        {
                           §§pop();
                           continue loop0;
                        }
                        addr101:
                     }
                     return;
                  }
               }
               §§goto(addr101);
            }
         }
         §§goto(addr61);
      }
      
      override public function get width() : Number
      {
         return 61;
      }
      
      override public function set data(param1:Object) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            super.data = param1;
         }
         do
         {
            this.update();
         }
         while(_loc2_);
         
      }
      
      private function update() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            if(data == null)
            {
               if(_loc1_ || this)
               {
               }
            }
            else
            {
               this.§_-yJ§();
            }
         }
      }
      
      public function get §_-bF§() : §_-M3§
      {
         return data as §_-M3§;
      }
   }
}
