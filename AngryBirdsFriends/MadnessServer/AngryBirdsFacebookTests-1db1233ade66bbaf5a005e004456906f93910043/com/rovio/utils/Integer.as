package com.rovio.utils
{
   public class Integer
   {
       
      
      private var mData:Vector.<int>;
      
      public function Integer(value:int = 0)
      {
         super();
         this.mData = new Vector.<int>(32);
         this.assign(value);
      }
      
      public function assign(value:int) : void
      {
         var random:* = 0;
         var bit:* = 0;
         var mask:* = 1;
         for(var i:int = 0; i < this.mData.length; i++)
         {
            random = int(Math.round((Math.random() * 2 - 1) * int.MAX_VALUE));
            bit = value & mask;
            if(bit)
            {
               random |= mask;
            }
            else
            {
               random &= ~mask;
            }
            this.mData[i] = random;
            mask <<= 1;
         }
         if(this.getValue() != value)
         {
         }
      }
      
      public function getValue() : int
      {
         var value:* = 0;
         var mask:* = 1;
         for(var i:int = 0; i < this.mData.length; i++)
         {
            value |= this.mData[i] & mask;
            mask <<= 1;
         }
         return value;
      }
   }
}
