package §`",§
{
   import §#";§.§0"#§;
   import §+!-§.Sprite;
   import §;"7§.§="<§;
   
   public class §7=§ extends §7!s§
   {
       
      
      private var §9"§:String;
      
      private var §<!'§:Boolean;
      
      private var §[+§:Number;
      
      private var §2;§:int;
      
      public function §7=§(param1:Number, param2:Number, param3:String, param4:Boolean, param5:Number, param6:int)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!(_loc8_ && this))
         {
            super(param1,param2);
         }
         loop0:
         do
         {
            this.§9"§ = param3;
            loop1:
            while(true)
            {
               this.§<!'§ = param4;
               do
               {
                  this.§[+§ = param5;
                  continue loop1;
               }
               while(_loc8_ && param2);
               
               continue loop0;
            }
         }
         while(_loc8_);
         
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§="<§) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param2)
         {
            §§push(super.update(param1,param2,param3));
            while(true)
            {
               if(!§§pop())
               {
                  if(_loc4_)
                  {
                     §0"#§.§9"2§(this.§9"§);
                  }
                  §§push(false);
                  break;
               }
               addr43:
               if(_loc5_ && param3)
               {
                  continue;
               }
               §§goto(addr50);
            }
            §§goto(addr55);
         }
         while(true)
         {
            §§push(false);
            if(!(_loc5_ && this))
            {
               §§goto(addr43);
            }
            addr55:
            return §§pop();
         }
         addr50:
         return §§pop();
      }
      
      override public function clone() : §7!s§
      {
         return new §7=§(time,duration,this.§9"§,this.§<!'§,this.§[+§,this.§2;§);
      }
   }
}
