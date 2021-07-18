package §7Z§
{
   import §2Y§.Sprite;
   import §=!<§.§>a§;
   import §^!0§.§&M§;
   
   public class §2u§ extends §^!§
   {
       
      
      private var §<g§:String;
      
      private var §=![§:Boolean;
      
      private var §,8§:Number;
      
      private var §2x§:int;
      
      public function §2u§(param1:Number, param2:Number, param3:String, param4:Boolean, param5:Number, param6:int)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(!_loc7_)
         {
            super(param1,param2);
            loop0:
            while(true)
            {
               this.§<g§ = param3;
               while(true)
               {
                  this.§=![§ = param4;
                  continue loop0;
                  addr52:
                  if(_loc8_ || param2)
                  {
                     loop4:
                     while(true)
                     {
                        this.§2x§ = param6;
                        if(_loc8_)
                        {
                           break;
                        }
                        addr35:
                        while(_loc8_ || this)
                        {
                           §§goto(addr52);
                           continue loop4;
                        }
                        continue loop0;
                     }
                     return;
                     addr59:
                  }
               }
            }
         }
         §§goto(addr59);
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§>a§) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            §§push(super.update(param1,param2,param3));
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  §§push(false);
                  if(!(_loc4_ && param1))
                  {
                     return §§pop();
                  }
                  continue;
               }
               if(!_loc4_)
               {
                  while(true)
                  {
                     §&M§.§6!#§(this.§<g§);
                  }
                  addr68:
               }
               while(true)
               {
                  §§push(false);
                  continue loop0;
               }
            }
            return §§pop();
         }
         §§goto(addr68);
      }
      
      override public function clone() : §^!§
      {
         return new §2u§(time,duration,this.§<g§,this.§=![§,this.§,8§,this.§2x§);
      }
   }
}
