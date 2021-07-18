package §"!&§
{
   public class §]!<§ extends §<s§
   {
       
      
      private var §0!w§:Boolean;
      
      private var each:Boolean;
      
      private var §&0§:String;
      
      private var §[!-§:String;
      
      private var §!!<§:String;
      
      private var §?"0§:String;
      
      private var §#o§:String;
      
      private var § !M§:String;
      
      private var §%!e§:int;
      
      public function §]!<§(param1:String, param2:int, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number, param9:Boolean, param10:Boolean, param11:String, param12:String, param13:String, param14:String, param15:String, param16:String, param17:int)
      {
         var _loc18_:Boolean = false;
         var _loc19_:Boolean = true;
         if(!_loc18_)
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8);
            loop0:
            while(true)
            {
               this.§0!w§ = param9;
               loop1:
               while(true)
               {
                  this.each = param10;
                  loop2:
                  while(true)
                  {
                     this.§&0§ = param11;
                     loop3:
                     while(true)
                     {
                        this.§[!-§ = param12;
                        loop4:
                        while(_loc19_)
                        {
                           this.§!!<§ = param13;
                           continue loop3;
                           addr56:
                           if(!(_loc18_ && param1))
                           {
                              this.§ !M§ = param16;
                              while(_loc19_ || param2)
                              {
                                 this.§%!e§ = param17;
                                 if(_loc19_)
                                 {
                                    if(!_loc18_)
                                    {
                                       return;
                                    }
                                    addr49:
                                    while(true)
                                    {
                                       if(_loc18_ && this)
                                       {
                                          while(_loc19_)
                                          {
                                             continue loop0;
                                          }
                                          continue loop2;
                                          addr78:
                                       }
                                       §§goto(addr56);
                                    }
                                    continue loop4;
                                 }
                              }
                              continue loop3;
                              addr37:
                           }
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
         while(true)
         {
            this.§?"0§ = param14;
            §§goto(addr78);
         }
      }
      
      public function get bouncesLaser() : Boolean
      {
         return this.§0!w§;
      }
      
      public function get bouncesLaserTargeted() : Boolean
      {
         return this.each;
      }
      
      public function get §&"=§() : int
      {
         return this.§%!e§;
      }
      
      public function get particlesDestroyed() : String
      {
         return this.§&0§;
      }
      
      public function get rollingSound() : String
      {
         return this.§#o§;
      }
      
      public function get destroyedSound() : String
      {
         return this.§?"0§;
      }
      
      public function get damageSound() : String
      {
         return this.§!!<§;
      }
      
      public function get collisionSound() : String
      {
         return this.§[!-§;
      }
   }
}
