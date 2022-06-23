package §9!7§
{
   import §#h§.§ !H§;
   import §,_§.Sprite;
   import §5`§.§?y§;
   
   public class § y§ extends §`E§
   {
       
      
      private var §<K§:String;
      
      private var §"!A§:Boolean;
      
      private var §&x§:Number;
      
      private var §6,§:int;
      
      public function § y§(param1:Number, param2:Number, param3:String, param4:Boolean, param5:Number, param6:int)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc7_)
         {
            super(param1,param2);
            if(_loc7_)
            {
               addr44:
               this.§<K§ = param3;
               if(!_loc8_)
               {
                  this.§"!A§ = param4;
                  if(!(_loc8_ && param1))
                  {
                     addr59:
                     this.§&x§ = param5;
                     if(_loc7_ || param3)
                     {
                        this.§6,§ = param6;
                     }
                  }
                  return;
               }
            }
            §§goto(addr59);
         }
         §§goto(addr44);
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§?y§) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param3))
         {
            §§push(super.update(param1,param2,param3));
            if(!_loc5_)
            {
               if(!§§pop())
               {
                  if(!_loc5_)
                  {
                     § !H§.§ !%§(this.§<K§);
                     if(!_loc5_)
                     {
                        §§push(false);
                        if(_loc4_)
                        {
                           return §§pop();
                        }
                     }
                     else
                     {
                        addr53:
                        §§push(false);
                     }
                  }
               }
               §§goto(addr53);
            }
            return §§pop();
         }
         §§goto(addr53);
      }
      
      override public function clone() : §`E§
      {
         return new § y§(time,duration,this.§<K§,this.§"!A§,this.§&x§,this.§6,§);
      }
   }
}
