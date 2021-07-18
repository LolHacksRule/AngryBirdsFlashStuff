package §+!a§
{
   public class §>8§ extends §2!a§
   {
       
      
      protected var §>! §:Vector.<§[C§>;
      
      protected var §12§:Number = 1.0;
      
      protected var §>!<§:Number = 1.0;
      
      protected var §="#§:Number = 1.0;
      
      protected var § do§:Number = 1.0;
      
      public function §>8§(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:Boolean, param13:Boolean, param14:Boolean = false)
      {
         var _loc15_:Boolean = false;
         var _loc16_:Boolean = true;
         if(_loc16_ || param3)
         {
            super(param1,param2,param3,param4,param5,param6,param11,param12,param13,param14);
            loop0:
            while(true)
            {
               this.§>! § = new Vector.<§[C§>();
               while(true)
               {
                  this.§12§ = param7;
                  loop2:
                  for(; !(_loc15_ && this); if(_loc16_ || param1)
                  {
                     continue loop0;
                  })
                  {
                     this.§>!<§ = param8;
                     while(true)
                     {
                        this.§="#§ = param9;
                        loop4:
                        while(_loc16_)
                        {
                           while(true)
                           {
                              this.§ do§ = param10;
                              if(_loc16_ || param1)
                              {
                                 continue loop2;
                              }
                              continue loop4;
                           }
                           return;
                        }
                     }
                  }
               }
               if(_loc15_ && this)
               {
                  continue;
               }
               §§goto(addr64);
            }
         }
         §§goto(addr71);
      }
      
      public function get §>>§() : Number
      {
         return this.§12§;
      }
      
      public function get §[!&§() : Number
      {
         return this.§>!<§;
      }
      
      public function get §9"-§() : Number
      {
         return this.§="#§;
      }
      
      public function get scaleSpeed() : Number
      {
         return this.§ do§;
      }
      
      public function §3!B§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number, param9:Boolean, param10:Array) : void
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc11_:§[C§;
         (_loc11_ = new §[C§(param10)).count = param1;
         if(!(_loc13_ && this))
         {
            _loc11_.x = param2;
            while(true)
            {
               _loc11_.y = param3;
               loop1:
               while(_loc12_ || param2)
               {
                  _loc11_.w = param4;
                  while(true)
                  {
                     _loc11_.h = param5;
                     loop3:
                     for(; _loc12_ || param2; loop6:
                     for(; !(_loc13_ && param2); if(!(_loc12_ || this))
                     {
                        continue;
                     },§§goto(addr50))
                     {
                        _loc11_.variation = param8;
                        while(true)
                        {
                           _loc11_.randomRotation = param9;
                           while(!(_loc13_ && param3))
                           {
                              continue loop1;
                              this.§>! §.push(_loc11_);
                              if(_loc12_)
                              {
                                 continue loop6;
                              }
                           }
                        }
                     })
                     {
                        while(true)
                        {
                           _loc11_.velX = param6;
                           while(true)
                           {
                              _loc11_.velY = param7;
                              continue loop3;
                              addr50:
                              if(_loc12_ || param1)
                              {
                                 return;
                              }
                           }
                        }
                     }
                  }
                  if(_loc13_ && param1)
                  {
                     continue;
                  }
                  §§goto(addr86);
               }
            }
         }
         §§goto(addr120);
      }
   }
}
