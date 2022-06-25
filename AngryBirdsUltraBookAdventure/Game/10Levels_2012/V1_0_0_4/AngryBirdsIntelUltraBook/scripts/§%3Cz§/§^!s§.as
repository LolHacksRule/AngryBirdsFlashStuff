package §<z§
{
   import §6!M§.§-!?§;
   import §6!M§.§4W§;
   import §6!M§.§7!m§;
   import §6!M§.§9!d§;
   import §<e§.§ &§;
   import §^_§.§!>§;
   import flash.display.Loader;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   
   public class §^!s§ extends §#h§
   {
      
      public static var §-!1§:String;
      
      public static var §^i§:Boolean = false;
      
      public static var §<!?§:Dictionary;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §^i§ = false;
         }
         do
         {
            §<!?§ = new Dictionary();
         }
         while(!_loc1_);
         
      }
      
      private var §`!u§:Loader;
      
      private var §8>§:§1S§;
      
      public function §^!s§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
         do
         {
            this.init();
         }
         while(!(_loc1_ || _loc2_));
         
      }
      
      private function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            addEventListener(MouseEvent.CLICK,this.§]!E§);
         }
      }
      
      private function §]!Y§(param1:Class) : §1S§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param1))
         {
            if(!§<!?§[param1])
            {
               if(!(_loc4_ && this))
               {
                  §<!?§[param1] = [];
               }
            }
         }
         var _loc2_:Array = §<!?§[param1];
         if(_loc3_ || this)
         {
            if(_loc2_.length == 0)
            {
               if(!_loc4_)
               {
                  §§goto(addr76);
               }
            }
            return _loc2_.pop();
         }
         addr76:
         return new param1();
      }
      
      private function §"B§(param1:§1S§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:Class = Object(this.§8>§).constructor;
         if(!(_loc4_ && param1))
         {
            if(!§<!?§[_loc2_])
            {
               while(true)
               {
                  §<!?§[_loc2_] = [];
                  while(true)
                  {
                  }
               }
               addr70:
            }
            do
            {
               §<!?§[_loc2_].push(param1);
               if(_loc4_)
               {
                  continue;
               }
            }
            while(!_loc3_);
            
            return;
         }
         §§goto(addr70);
      }
      
      private function §?y§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:Class = null;
         var _loc3_:* = Object(this.§+V§).constructor;
         if(!(_loc5_ && _loc3_))
         {
            if(§-!?§ === _loc3_)
            {
               if(!_loc5_)
               {
                  §§push(0);
                  if(_loc5_)
                  {
                     addr84:
                  }
               }
               else
               {
                  addr76:
                  §§push(1);
                  if(_loc4_ || _loc1_)
                  {
                     §§goto(addr84);
                  }
               }
            }
            else
            {
               if(§4W§ === _loc3_)
               {
                  if(!(_loc5_ && this))
                  {
                     §§goto(addr76);
                  }
                  else
                  {
                     addr88:
                     §§push(2);
                     if(_loc5_ && _loc2_)
                     {
                     }
                  }
               }
               else if(§7!m§ === _loc3_)
               {
                  §§goto(addr88);
               }
               else
               {
                  §§push(3);
               }
               §§goto(addr88);
            }
            switch(§§pop())
            {
               case 0:
                  _loc1_ = §=!1§;
                  if(_loc4_ || _loc1_)
                  {
                     break;
                  }
                  §§goto(addr127);
               case 1:
                  _loc1_ = §8!9§;
                  break;
               case 2:
                  _loc1_ = §%!c§;
            }
            if(!_loc1_)
            {
               if(_loc4_)
               {
                  §!>§.log("WARNING! Unknown score item found!");
                  if(_loc4_ || _loc3_)
                  {
                     addr127:
                     return;
                  }
               }
            }
            else
            {
               var _loc2_:Class = !!this.§8>§ ? Object(this.§8>§).constructor : null;
               if(!_loc5_)
               {
                  if(_loc1_ != _loc2_)
                  {
                     loop0:
                     while(true)
                     {
                        §§push(this.§8>§);
                        loop1:
                        while(true)
                        {
                           if(§§pop())
                           {
                              if(_loc4_ || _loc1_)
                              {
                                 while(true)
                                 {
                                    this.§"B§(removeChild(this.§8>§) as §1S§);
                                 }
                                 addr210:
                              }
                              while(true)
                              {
                                 addr177:
                                 loop4:
                                 while(!(_loc5_ && this))
                                 {
                                    if(_loc4_)
                                    {
                                       while(true)
                                       {
                                          §§push(this.§8>§);
                                          if(_loc4_ || this)
                                          {
                                             §§pop().data = this.§+V§;
                                             if(_loc4_)
                                             {
                                                break;
                                             }
                                             continue loop4;
                                          }
                                          continue loop1;
                                       }
                                       return;
                                       addr151:
                                    }
                                    continue loop0;
                                 }
                              }
                           }
                           while(true)
                           {
                              this.§8>§ = addChild(this.§]!Y§(_loc1_)) as §1S§;
                              §§goto(addr177);
                           }
                        }
                     }
                  }
                  §§goto(addr151);
               }
               §§goto(addr210);
            }
            §§goto(addr133);
         }
         §§goto(addr88);
      }
      
      private function §]!E§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.§+V§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               if(!_loc3_)
               {
                  if(!§§pop())
                  {
                     while(§§pop())
                     {
                        if(_loc2_ || this)
                        {
                           §"!^§.scrollerSprite.dispatchEvent(new § &§(§ &§.§+!j§,data as §9!d§));
                        }
                        if(_loc2_)
                        {
                           addr78:
                           break;
                        }
                        continue loop0;
                     }
                     return;
                     addr47:
                  }
               }
               addr86:
               while(true)
               {
                  §§pop();
                  continue loop0;
               }
            }
         }
         §§goto(addr78);
      }
      
      override public function get width() : Number
      {
         return 61;
      }
      
      override public function set data(param1:Object) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            super.data = param1;
            do
            {
               this.update();
            }
            while(!_loc2_);
            
         }
      }
      
      private function update() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            if(data == null)
            {
               if(!_loc2_)
               {
               }
            }
            else
            {
               this.§?y§();
            }
         }
      }
      
      public function get §+V§() : §9!d§
      {
         return data as §9!d§;
      }
   }
}
