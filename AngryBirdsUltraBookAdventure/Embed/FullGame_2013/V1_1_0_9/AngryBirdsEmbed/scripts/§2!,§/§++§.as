package §2!,§
{
   public class §++§
   {
       
      
      public var mName:String;
      
      public var §]j§:Number;
      
      public var §+$§:Number;
      
      public var §2!;§:Number;
      
      public var §5!G§:Number;
      
      public var §-_§:Number;
      
      public var §&g§:Boolean;
      
      public var §%#§:Number;
      
      public var §]@§:Number;
      
      public var §3"§:Number;
      
      public var §^!5§:Boolean;
      
      public var §2X§:Boolean;
      
      public var §^!7§:Boolean;
      
      public var §0x§:Array;
      
      public var §&!6§:Boolean;
      
      public var §1?§:String;
      
      public var § for§:String;
      
      public function §++§(param1:String, param2:Number, param3:Number, param4:Number, param5:Number, param6:Boolean, param7:Boolean, param8:Number, param9:Boolean, param10:Number, param11:Number, param12:Number, param13:Array, param14:Boolean, param15:String, param16:String, param17:Boolean = false)
      {
         var _loc18_:Boolean = false;
         var _loc19_:Boolean = true;
         super();
         this.mName = param1;
         this.§]j§ = param4;
         this.§+$§ = param5;
         this.§2!;§ = param3;
         §§push(this);
         §§push(param2);
         if(!_loc18_)
         {
            §§push(§§pop() / 1000);
         }
         §§pop().§5!G§ = §§pop();
         if(!(_loc18_ && param3))
         {
            this.§^!5§ = param6;
            if(!(_loc18_ && param2))
            {
               this.§^!7§ = param7;
               §§push(this);
               if(!_loc18_)
               {
                  §§push(param8);
                  if(_loc19_)
                  {
                     if(§§pop() != 0)
                     {
                        addr76:
                        §§push(param8);
                        if(!_loc18_)
                        {
                           §§push(Number(§§pop()));
                           if(_loc18_)
                           {
                           }
                           §§goto(addr85);
                        }
                     }
                     else
                     {
                        §§push(Number(1));
                     }
                  }
                  §§goto(addr85);
               }
               §§goto(addr76);
            }
            addr85:
            §§pop().§-_§ = §§pop();
            this.§&g§ = param9;
            if(_loc19_)
            {
               this.§%#§ = param10;
               if(_loc19_)
               {
                  §§goto(addr96);
               }
               §§goto(addr116);
            }
            addr96:
            this.§]@§ = param11;
            if(!(_loc18_ && param2))
            {
               addr116:
               this.§3"§ = param12;
            }
            this.§0x§ = param13;
            if(!_loc18_)
            {
               this.§&!6§ = param14;
               if(_loc19_ || param1)
               {
                  this.§1?§ = param15;
               }
               §§goto(addr143);
            }
            this.§ for§ = param16;
            this.§2X§ = param17;
            §§goto(addr143);
         }
         addr143:
      }
      
      public function §=x§() : String
      {
         return this.mName;
      }
      
      public function §+&§() : Number
      {
         return this.§]j§;
      }
      
      public function §'5§() : Number
      {
         return this.§+$§;
      }
      
      public function §4!$§() : Number
      {
         return this.§5!G§;
      }
      
      public function §5z§() : Boolean
      {
         return this.§^!5§;
      }
   }
}
