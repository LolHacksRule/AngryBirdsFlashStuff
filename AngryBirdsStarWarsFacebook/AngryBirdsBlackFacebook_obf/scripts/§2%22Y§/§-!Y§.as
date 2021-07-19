package §2"Y§
{
   public class §-!Y§ extends §&!x§
   {
       
      
      private var §]!R§:Boolean;
      
      private var §5#"§:Boolean;
      
      private var §@!x§:String;
      
      private var §;i§:String;
      
      private var §%"o§:String;
      
      private var §<b§:String;
      
      private var §'!$§:String;
      
      private var §2"p§:String;
      
      private var §<#&§:int;
      
      public function §-!Y§(param1:String, param2:int, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number, param9:Boolean, param10:Boolean, param11:String, param12:String, param13:String, param14:String, param15:String, param16:String, param17:int)
      {
         var _loc18_:Boolean = false;
         var _loc19_:Boolean = true;
         if(!(_loc18_ && param2))
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8);
            while(true)
            {
               this.§]!R§ = param9;
               loop3:
               while(_loc19_ || this)
               {
                  this.§;i§ = param12;
                  loop4:
                  while(true)
                  {
                     this.§%"o§ = param13;
                     loop5:
                     for(; !_loc18_; if(!(_loc18_ && param2))
                     {
                        this.§2"p§ = param16;
                        continue loop4;
                     })
                     {
                        this.§<b§ = param14;
                        loop6:
                        while(!(_loc18_ && param1))
                        {
                           this.§'!$§ = param15;
                           while(true)
                           {
                              if(_loc19_)
                              {
                                 continue loop5;
                              }
                              continue loop6;
                           }
                           continue loop5;
                        }
                        while(true)
                        {
                           this.§@!x§ = param11;
                           continue loop3;
                           §§goto(addr85);
                        }
                        addr85:
                     }
                     addr126:
                     while(true)
                     {
                        this.§5#"§ = param10;
                        §§goto(addr121);
                     }
                     while(true)
                     {
                        if(!(_loc18_ && this))
                        {
                           if(_loc18_)
                           {
                              break;
                           }
                           continue;
                        }
                        continue loop4;
                     }
                     continue loop3;
                  }
               }
            }
         }
         §§goto(addr126);
      }
      
      public function get bouncesLaser() : Boolean
      {
         return this.§]!R§;
      }
      
      public function get bouncesLaserTargeted() : Boolean
      {
         return this.§5#"§;
      }
      
      public function get §3!k§() : int
      {
         return this.§<#&§;
      }
      
      public function get particlesDestroyed() : String
      {
         return this.§@!x§;
      }
      
      public function get rollingSound() : String
      {
         return this.§'!$§;
      }
      
      public function get destroyedSound() : String
      {
         return this.§<b§;
      }
      
      public function get damageSound() : String
      {
         return this.§%"o§;
      }
      
      public function get collisionSound() : String
      {
         return this.§;i§;
      }
   }
}
