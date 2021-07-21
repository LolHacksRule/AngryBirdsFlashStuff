package §]Z§
{
   public class §0!H§
   {
       
      
      public var mName:String;
      
      public var § !h§:Number;
      
      public var §0Z§:Number;
      
      public var §+h§:Number;
      
      public var § 2§:Number;
      
      public var §7P§:Number;
      
      public var §`§:Boolean;
      
      public var §[!l§:Number;
      
      public var § !2§:Number;
      
      public var §5!U§:Number;
      
      public var §>T§:Boolean;
      
      public var §0_§:Boolean;
      
      public var §!@§:Boolean;
      
      public var §=![§:Array;
      
      public var §;A§:Boolean;
      
      public var §43§:String;
      
      public var §&!&§:String;
      
      public function §0!H§(param1:String, param2:Number, param3:Number, param4:Number, param5:Number, param6:Boolean, param7:Boolean, param8:Number, param9:Boolean, param10:Number, param11:Number, param12:Number, param13:Array, param14:Boolean, param15:String, param16:String, param17:Boolean = false)
      {
         var _loc18_:Boolean = true;
         var _loc19_:Boolean = false;
         super();
         this.mName = param1;
         this.§ !h§ = param4;
         this.§0Z§ = param5;
         this.§+h§ = param3;
         §§push(this);
         §§push(param2);
         if(!(_loc19_ && param3))
         {
            §§push(§§pop() / 1000);
         }
         §§pop().§ 2§ = §§pop();
         if(!_loc19_)
         {
            this.§>T§ = param6;
            if(_loc18_)
            {
               addr49:
               this.§!@§ = param7;
               §§push(this);
               if(_loc18_)
               {
                  §§push(param8);
                  if(!(_loc19_ && param1))
                  {
                     if(§§pop() != 0)
                     {
                        addr75:
                        §§push(param8);
                        if(_loc18_)
                        {
                           addr78:
                           §§push(Number(§§pop()));
                           if(_loc18_ || this)
                           {
                           }
                           §§goto(addr89);
                        }
                     }
                     else
                     {
                        §§push(Number(1));
                     }
                     addr89:
                     §§pop().§7P§ = §§pop();
                     if(_loc18_ || this)
                     {
                        this.§`§ = param9;
                        this.§[!l§ = param10;
                        this.§ !2§ = param11;
                        this.§5!U§ = param12;
                        if(_loc18_ || param3)
                        {
                           this.§=![§ = param13;
                           if(!(_loc19_ && this))
                           {
                              this.§;A§ = param14;
                              addr139:
                              this.§43§ = param15;
                           }
                        }
                        §§goto(addr139);
                     }
                     this.§&!&§ = param16;
                     if(!_loc19_)
                     {
                        this.§0_§ = param17;
                     }
                     return;
                  }
                  §§goto(addr78);
               }
               §§goto(addr75);
            }
            §§goto(addr139);
         }
         §§goto(addr49);
      }
      
      public function §%L§() : String
      {
         return this.mName;
      }
      
      public function § !G§() : Number
      {
         return this.§ !h§;
      }
      
      public function §?B§() : Number
      {
         return this.§0Z§;
      }
      
      public function §]t§() : Number
      {
         return this.§ 2§;
      }
      
      public function §4&§() : Boolean
      {
         return this.§>T§;
      }
   }
}
