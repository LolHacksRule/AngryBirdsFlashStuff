package §[m§
{
   public class LevelThemeBackground
   {
       
      
      public var mName:String;
      
      public var §>!F§:String;
      
      public var §1!5§:Number;
      
      public var §1!,§:Array;
      
      public var §52§:Number;
      
      public var § V§:Number;
      
      public var §?!R§:String;
      
      public var §&K§:String;
      
      public var §9Y§:Number;
      
      public var §8@§:String;
      
      public function LevelThemeBackground(param1:String, param2:XMLList, param3:Number, param4:Number, param5:String, param6:String, param7:Number, param8:String, param9:Number, param10:String)
      {
         var _loc18_:Boolean = false;
         var _loc19_:Boolean = true;
         var _loc11_:XML = null;
         var _loc12_:Array = null;
         var _loc13_:XML = null;
         if(_loc19_ || param1)
         {
            super();
            while(true)
            {
               this.mName = param1;
               loop5:
               while(_loc19_ || param2)
               {
                  this.§>!F§ = param6;
                  while(true)
                  {
                     if(_loc19_)
                     {
                        addr62:
                        if(_loc18_ && param3)
                        {
                           break;
                        }
                        loop7:
                        while(true)
                        {
                           this.§1!5§ = param7;
                           while(!_loc18_)
                           {
                              this.§&K§ = param8;
                              if(_loc19_ || param1)
                              {
                                 continue loop7;
                              }
                           }
                           continue loop5;
                        }
                        continue;
                     }
                     addr86:
                     addr98:
                     while(_loc19_ || param3)
                     {
                        this.§?!R§ = param5;
                        continue loop5;
                     }
                     addr106:
                     while(!_loc18_)
                     {
                        this.§ V§ = param4;
                        §§goto(addr86);
                     }
                     while(true)
                     {
                        this.§52§ = param3;
                        §§goto(addr98);
                     }
                  }
                  while(true)
                  {
                     this.§1!,§ = new Array();
                     §§goto(addr106);
                     §§goto(addr62);
                  }
               }
            }
         }
         §§goto(addr111);
      }
      
      public function § 7§(param1:String, param2:Number, param3:Number, param4:Number, param5:Number, param6:Boolean, param7:Boolean, param8:Number, param9:Boolean, param10:Number, param11:Number, param12:Number, param13:Array, param14:Boolean, param15:String, param16:String, param17:Boolean = false) : void
      {
         var _loc18_:Boolean = true;
         var _loc19_:Boolean = false;
         if(_loc18_ || this)
         {
            this.§1!,§[this.§1!,§.length] = new §#c§(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param17);
         }
      }
      
      public function § ! §() : Number
      {
         return this.§9Y§;
      }
   }
}
