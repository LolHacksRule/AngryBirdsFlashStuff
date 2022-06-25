package §_-9T§
{
   public class §_-0D7§
   {
       
      
      public var mName:String;
      
      public var §_-M8§:String;
      
      public var §_-Xa§:Number;
      
      public var §_-Ac§:Array;
      
      public var §_-Zy§:Number;
      
      public var §_-0-9§:Number;
      
      public var §_-2z§:String;
      
      public var §_-YF§:String;
      
      public var §_-05k§:Number;
      
      public var §_-hF§:String;
      
      public function §_-0D7§(param1:String, param2:XMLList, param3:Number, param4:Number, param5:String, param6:String, param7:Number, param8:String, param9:Number, param10:String)
      {
         var _loc18_:Boolean = false;
         var _loc19_:Boolean = true;
         var _loc11_:XML = null;
         var _loc12_:Array = null;
         var _loc13_:XML = null;
         if(!_loc18_)
         {
            super();
            while(true)
            {
               this.mName = param1;
               addr101:
               while(true)
               {
                  this.§_-Ac§ = new Array();
               }
            }
            addr104:
         }
         loop2:
         while(true)
         {
            this.§_-Zy§ = param3;
            loop3:
            while(!_loc18_)
            {
               if(_loc19_)
               {
                  this.§_-0-9§ = param4;
                  loop4:
                  while(true)
                  {
                     this.§_-2z§ = param5;
                     loop5:
                     while(true)
                     {
                        this.§_-M8§ = param6;
                        loop6:
                        while(true)
                        {
                           if(_loc19_ || param1)
                           {
                              if(!_loc19_)
                              {
                                 break;
                              }
                              if(_loc19_)
                              {
                                 while(true)
                                 {
                                    this.§_-Xa§ = param7;
                                    continue loop6;
                                 }
                                 continue loop4;
                                 addr44:
                              }
                              continue loop2;
                           }
                           continue loop5;
                        }
                        continue loop3;
                     }
                  }
               }
               else
               {
                  §§goto(addr104);
               }
            }
            §§goto(addr101);
         }
      }
      
      public function §_-2U§(param1:String, param2:Number, param3:Number, param4:Number, param5:Number, param6:Boolean, param7:Boolean, param8:Number, param9:Boolean, param10:Number, param11:Number, param12:Number, param13:Array, param14:Boolean, param15:String, param16:String, param17:Boolean = false) : void
      {
         var _loc18_:Boolean = false;
         var _loc19_:Boolean = true;
         if(_loc19_)
         {
            this.§_-Ac§[this.§_-Ac§.length] = new §_-QO§(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param17);
         }
      }
      
      public function §_-ez§() : Number
      {
         return this.§_-05k§;
      }
   }
}
