package §"!t§
{
   import flash.geom.Rectangle;
   
   public class §5!e§ extends §;#T§
   {
       
      
      public var §-!A§:§;#T§;
      
      public var §9"m§:§;#T§;
      
      protected var §,#]§:Number = 0.5;
      
      public function §5!e§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            this.§-!A§ = new §;#T§();
            loop0:
            while(true)
            {
               this.§9"m§ = new §;#T§();
               while(true)
               {
                  super();
                  while(true)
                  {
                     if(!(_loc1_ && _loc1_))
                     {
                        while(true)
                        {
                           addChild(this.§-!A§);
                           continue loop0;
                        }
                        return;
                        addr48:
                        addr72:
                     }
                     break;
                     addr36:
                     if(_loc1_)
                     {
                        continue;
                     }
                     §§goto(addr48);
                  }
               }
            }
         }
         §§goto(addr72);
      }
      
      public function get §`_§() : Number
      {
         return this.§,#]§;
      }
      
      public function set §`_§(param1:Number) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(_loc8_)
         {
            this.§,#]§ = Math.max(0,Math.min(1,param1));
         }
         var _loc2_:Rectangle = rect.clone();
         var _loc3_:* = int(rect.width * this.§,#]§);
         §§push(rect.width - _loc3_);
         if(!(_loc9_ && _loc3_))
         {
            §§push(Number(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(rect.width - (_loc3_ + _loc4_));
         if(!(_loc9_ && param1))
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:*;
         §§push(_loc5_ = §§pop());
         if(_loc8_ || _loc3_)
         {
            §§push(0);
            if(_loc8_)
            {
               if(§§pop() > §§pop())
               {
                  if(_loc8_)
                  {
                     §§push(_loc3_);
                     if(!_loc9_)
                     {
                        §§goto(addr126);
                     }
                     _loc3_ = §§pop();
                     if(!_loc8_)
                     {
                        addr109:
                        §§push(_loc4_);
                        if(!(_loc9_ && param1))
                        {
                           addr117:
                           §§push(§§pop() - _loc5_);
                           if(_loc8_ || _loc3_)
                           {
                              addr126:
                              §§goto(addr127);
                           }
                        }
                        addr127:
                        §§push(§§pop() + _loc5_);
                        if(_loc8_)
                        {
                           §§push(int(§§pop()));
                        }
                        _loc4_ = Number(§§pop());
                        §§goto(addr128);
                     }
                     else
                     {
                        addr101:
                     }
                     addr128:
                     var _loc6_:Rectangle = new Rectangle(0,0,_loc3_,rect.height);
                     var _loc7_:Rectangle = new Rectangle(_loc3_,0,_loc4_,rect.height);
                     if(_loc8_)
                     {
                        this.§-!A§.onParentUpdate(_loc6_);
                        do
                        {
                           this.§9"m§.onParentUpdate(_loc7_);
                        }
                        while(_loc9_);
                        
                     }
                     return;
                  }
                  §§goto(addr101);
               }
               else
               {
                  §§push(_loc5_);
                  if(_loc8_)
                  {
                     addr106:
                     if(§§pop() < 0)
                     {
                        if(!_loc9_)
                        {
                           §§goto(addr109);
                        }
                     }
                     §§goto(addr126);
                  }
               }
               §§goto(addr117);
            }
            §§goto(addr106);
         }
         §§goto(addr126);
      }
      
      public function §]!e§(param1:int) : Number
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            param1 = int(Math.max(§>"Z§,Math.min(param1,width)));
            do
            {
               this.§`_§ = param1 / width;
            }
            while(!_loc2_);
            
         }
         return this.§`_§;
      }
      
      public function §`! §() : int
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§`_§);
         if(!(_loc2_ && _loc1_))
         {
            return §§pop() * width;
         }
      }
      
      override protected function onRectangleChanged() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§`_§ = this.§,#]§;
         }
      }
      
      override public function onParentUpdate(param1:Rectangle) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            rect = param1;
         }
      }
   }
}
