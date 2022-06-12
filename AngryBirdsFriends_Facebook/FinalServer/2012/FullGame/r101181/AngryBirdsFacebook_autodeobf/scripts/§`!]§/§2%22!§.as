package §`!]§
{
   import §1!$§.Sprite;
   import §6!B§.§>!E§;
   import §6!D§.§0Y§;
   
   public class §2"!§ extends §>!D§
   {
       
      
      private var §3S§:String;
      
      private var §!1§:Boolean;
      
      private var §4a§:Number;
      
      private var §4!F§:int;
      
      public function §2"!§(param1:Number, param2:Number, param3:String, param4:Boolean, param5:Number, param6:int)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!(_loc8_ && this))
         {
            super(param1,param2);
            loop0:
            while(true)
            {
               this.§3S§ = param3;
               while(true)
               {
                  this.§!1§ = param4;
                  while(_loc7_ || param3)
                  {
                     this.§4a§ = param5;
                     loop3:
                     while(!(_loc8_ && param2))
                     {
                        if(!_loc8_)
                        {
                           while(true)
                           {
                              this.§4!F§ = param6;
                              if(_loc7_ || param3)
                              {
                                 break;
                              }
                              continue loop3;
                           }
                           return;
                           continue;
                        }
                        continue loop0;
                     }
                  }
               }
            }
         }
         §§goto(addr73);
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§0Y§) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param1)
         {
            §§push(super.update(param1,param2,param3));
            while(true)
            {
               if(§§pop())
               {
                  continue;
               }
               §>!E§.§7N§(this.§3S§);
            }
            §§goto(addr56);
         }
         addr56:
         false;
         return §§pop();
      }
      
      override public function clone() : §>!D§
      {
         return new §2"!§(time,duration,this.§3S§,this.§!1§,this.§4a§,this.§4!F§);
      }
   }
}
