package §,z§
{
   import §&v§.§9B§;
   import §&v§.§each §;
   import §3!`§.b2Body;
   import §3!`§.b2BodyDef;
   import §3!`§.b2FixtureDef;
   import §3!`§.b2World;
   import §6![§.Sprite;
   import §?s§.§8K§;
   
   public class §%!f§ extends §?!;§
   {
       
      
      protected var §%8§:§each §;
      
      protected var §5!S§:Vector.<§<!r§>;
      
      public function §%!f§(param1:Sprite, param2:b2World, param3:§9B§, param4:§each §, param5:§8K§)
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_)
         {
            this.§5!S§ = new Vector.<§<!r§>();
            do
            {
               this.§%8§ = param4;
               do
               {
                  super(param1,param2,param3,param5);
                  do
                  {
                     this.§;!+§(§-!k§.x,§-!k§.y);
                  }
                  while(_loc6_);
                  
               }
               while(!(_loc7_ || param2));
               
            }
            while(_loc6_ && this);
            
         }
      }
      
      protected function get scale() : Number
      {
         return 1;
      }
      
      protected function §;!+§(param1:Number, param2:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:b2BodyDef = new b2BodyDef();
         if(!(_loc6_ && param2))
         {
            _loc3_.type = b2Body.b2_staticBody;
            while(true)
            {
               §§push(_loc3_.position);
               loop1:
               while(true)
               {
                  §§push(param1);
                  addr73:
                  while(true)
                  {
                     §§pop().x = §§pop();
                     continue loop1;
                  }
               }
            }
         }
         while(false)
         {
            §§goto(addr40);
         }
         var _loc4_:b2FixtureDef;
         (_loc4_ = new b2FixtureDef()).shape = this.§%8§.getB2Shape(this.scale);
         if(_loc5_)
         {
            _loc4_.§4F§ = true;
         }
         do
         {
            §]!_§ = §<H§.CreateFixture(_loc4_);
         }
         while(!_loc5_);
         
      }
      
      override public function collidedWith(param1:§<!r§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            if(param1)
            {
               while(this.§5!S§.indexOf(param1) == -1)
               {
                  if(_loc3_ || _loc2_)
                  {
                     this.§5!S§.push(param1);
                  }
                  do
                  {
                     param1.§#!]§(this);
                  }
                  while(_loc2_);
                  
                  if(_loc3_)
                  {
                     break;
                  }
               }
               addr50:
            }
            return;
         }
         §§goto(addr50);
      }
      
      override public function collisionEnded(param1:§<!r§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = 0;
         if(_loc4_)
         {
            if(param1)
            {
               loop0:
               while(true)
               {
                  §§push(int(this.§5!S§.indexOf(param1)));
                  loop1:
                  while(true)
                  {
                     _loc2_ = §§pop();
                     addr94:
                     while(true)
                     {
                        §§push(_loc2_);
                        if(_loc4_ || param1)
                        {
                           if(§§pop() == -1)
                           {
                              break;
                           }
                           if(!(_loc3_ && param1))
                           {
                              this.§5!S§.splice(_loc2_,1);
                           }
                           do
                           {
                              param1.§'![§(this);
                           }
                           while(_loc3_);
                           
                           if(!_loc3_)
                           {
                              continue loop0;
                           }
                           continue;
                        }
                        continue loop1;
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr94);
      }
   }
}
