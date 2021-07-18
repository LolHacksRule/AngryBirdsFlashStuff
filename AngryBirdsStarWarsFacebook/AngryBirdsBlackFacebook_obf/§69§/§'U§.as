package §69§
{
   public class §'U§ extends §>!b§
   {
       
      
      protected var §;m§:Vector.<§8![§>;
      
      protected var §[!r§:Number = 1.0;
      
      protected var §<#H§:Number = 1.0;
      
      protected var §3c§:Number = 1.0;
      
      protected var §^#8§:Number = 1.0;
      
      protected var §7!8§:Number = 0.0;
      
      protected var §0!Y§:Number = 0.0;
      
      public function §'U§(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number, param10:Number, param11:Number, param12:Number, param13:Boolean, param14:Boolean, param15:Boolean, param16:Boolean = false)
      {
         var _loc17_:Boolean = true;
         var _loc18_:Boolean = false;
         if(_loc17_ || param2)
         {
            super(param1,param2,param3,param4,param5,param6,param13,param14,param15,param16);
            loop0:
            while(true)
            {
               this.§;m§ = new Vector.<§8![§>();
               loop1:
               while(true)
               {
                  this.§[!r§ = param7;
                  loop2:
                  while(true)
                  {
                     this.§<#H§ = param8;
                     while(_loc17_)
                     {
                        while(_loc17_ || param2)
                        {
                           continue loop2;
                        }
                     }
                     continue loop1;
                  }
               }
               addr82:
               while(true)
               {
                  if(_loc18_ && this)
                  {
                     continue loop0;
                  }
                  this.§^#8§ = param10;
                  §§goto(addr53);
                  §§goto(addr34);
               }
               §§goto(addr41);
            }
         }
         while(true)
         {
            this.§3c§ = param9;
            §§goto(addr82);
         }
      }
      
      public function get §@"V§() : Number
      {
         return this.§[!r§;
      }
      
      public function get §="1§() : Number
      {
         return this.§<#H§;
      }
      
      public function get §0H§() : Number
      {
         return this.§3c§;
      }
      
      public function get scaleSpeed() : Number
      {
         return this.§^#8§;
      }
      
      public function get velocityX() : Number
      {
         return this.§7!8§;
      }
      
      public function get velocityY() : Number
      {
         return this.§0!Y§;
      }
      
      public function §5"&§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number, param9:Boolean, param10:Array) : void
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc11_:§8![§;
         (_loc11_ = new §8![§(param10)).count = param1;
         if(_loc13_ || param3)
         {
            _loc11_.x = param2;
            loop0:
            while(true)
            {
               _loc11_.y = param3;
               addr128:
               while(true)
               {
                  _loc11_.w = param4;
                  while(true)
                  {
                     _loc11_.h = param5;
                     addr70:
                     if(!(_loc12_ && this))
                     {
                        if(_loc13_)
                        {
                           return;
                        }
                        continue loop0;
                     }
                  }
               }
            }
         }
         loop3:
         while(true)
         {
            _loc11_.velX = param6;
            loop4:
            while(true)
            {
               _loc11_.velY = param7;
               loop5:
               while(true)
               {
                  _loc11_.variation = param8;
                  while(!_loc12_)
                  {
                     _loc11_.randomRotation = param9;
                     while(_loc13_)
                     {
                        this.§;m§.push(_loc11_);
                        if(!(_loc12_ && param2))
                        {
                           if(_loc13_)
                           {
                              if(!_loc12_)
                              {
                                 continue loop3;
                              }
                              continue loop4;
                           }
                           continue loop5;
                        }
                     }
                  }
                  §§goto(addr128);
               }
            }
         }
      }
   }
}
